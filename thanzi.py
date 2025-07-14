from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import pandas as pd
import joblib
import numpy as np

# Create app
app = FastAPI(title="Disease Prediction API", version="1.0")

# Add CORS middleware for frontend communication
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "https://4k82j6wf-8000.uks1.devtunnels.ms",  # Your dev tunnel
        "https://thanzi.onrender.com",  # Your future Render URL
        "https://*.onrender.com",  # Any Render subdomain
        "http://localhost:3000",  # React default
        "http://localhost:5173",  # Vite default
        "http://127.0.0.1:3000",
        "http://127.0.0.1:5173",
        "*"  # Allow all for development
    ],
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Load assets
best_model = joblib.load("best_model.pkl")
le = joblib.load("label_encoder.pkl")
test_col = joblib.load("symptom_features_correct.pkl")  # e.g., ['fever', 'cough', ...]
doc_data = pd.read_csv("doc_data.csv")
doc_data['Disease'] = doc_data['Disease'].astype(str).str.strip().str.lower()

# Input model
class SymptomInput(BaseModel):
    symptoms: list[str]

# Output model
class PredictionResult(BaseModel):
    disease: str
    description: str | None = None
    specialist: str | None = None

@app.post("/predict", response_model=PredictionResult)
def predict_disease(input_data: SymptomInput):
    try:
        # Clean symptoms
        symptoms = []
        for s in input_data.symptoms:
            parts = [p.strip().lower() for p in s.split(',') if p.strip()]
            symptoms.extend(parts)

        # Create input vector
        input_dict = {col: (1 if col in symptoms else 0) for col in test_col}
        input_df = pd.DataFrame([input_dict])

        # Predict
        encoded = best_model.predict(input_df)
        predicted = le.inverse_transform(encoded)[0].strip().lower()

        # Fetch disease info
        doc_row = doc_data[doc_data["Disease"] == predicted]
        description = doc_row["Description"].values[0] if not doc_row.empty else None
        specialist = doc_row["Specialist"].values[0] if not doc_row.empty else None

        return PredictionResult(
            disease=predicted,
            description=description,
            specialist=specialist
        )

    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Prediction failed: {str(e)}")

# Run the server
if __name__ == "__main__":
    import uvicorn
    import os

    # Get port from environment variable (Render sets this)
    port = int(os.environ.get("PORT", 8000))

    print("🚀 Starting Disease Prediction API...")
    print(f"📍 API will be available on port: {port}")
    print("📖 Documentation: /docs")

    uvicorn.run(app, host="0.0.0.0", port=port, log_level="info")
