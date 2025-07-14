# Thanzi - Disease Prediction API

A FastAPI-based disease prediction system that uses machine learning to predict diseases based on symptoms.

## 🏥 Features

- **Disease Prediction**: Predict diseases based on input symptoms
- **RESTful API**: Clean and simple API endpoints
- **CORS Enabled**: Frontend-ready with cross-origin support
- **No Confidence Scores**: Clean output without confidence values
- **Medical Information**: Includes disease descriptions and specialist recommendations

## 🚀 API Endpoints

### Health Check
```
GET /
```
Returns API status and version information.

### Predict Disease
```
POST /predict
```

**Request Body:**
```json
{
  "symptoms": ["fever", "cough", "headache"]
}
```

**Response:**
```json
{
  "disease": "common_cold",
  "description": "A viral infection of the upper respiratory tract",
  "specialist": "General Practitioner"
}
```

## 🛠️ Installation

1. **Clone the repository:**
```bash
git clone https://github.com/Christobel5khondiwa/thanzi.git
cd thanzi
```

2. **Install dependencies:**
```bash
pip install -r requirements.txt
```

3. **Run the API:**
```bash
python thanzi.py
```

The API will be available at `http://localhost:8000`

## 📖 API Documentation

Once the server is running, visit:
- **Interactive Docs**: `http://localhost:8000/docs`
- **Alternative Docs**: `http://localhost:8000/redoc`

## 🌐 Frontend Integration

### JavaScript Example
```javascript
fetch('http://localhost:8000/predict', {
  method: 'POST',
  headers: {'Content-Type': 'application/json'},
  body: JSON.stringify({symptoms: ['fever', 'cough', 'headache']})
})
.then(response => response.json())
.then(result => {
  console.log('Disease:', result.disease);
  console.log('Description:', result.description);
  console.log('Specialist:', result.specialist);
});
```

### Python Example
```python
import requests

response = requests.post('http://localhost:8000/predict', 
                        json={'symptoms': ['fever', 'cough', 'headache']})
result = response.json()
print(f"Disease: {result['disease']}")
```

## 📁 Project Structure

```
thanzi/
├── thanzi.py                    # Main API application
├── requirements.txt             # Python dependencies
├── best_model.pkl              # Trained ML model
├── label_encoder.pkl           # Label encoder for diseases
├── symptom_features_correct.pkl # Feature list for symptoms
├── doc_data.csv               # Disease information database
└── README.md                  # Project documentation
```

## 🔧 Dependencies

- FastAPI
- Uvicorn
- Pandas
- NumPy
- Scikit-learn
- Joblib
- Pydantic

## ⚠️ Disclaimer

This application is for educational and research purposes only. The predictions should not be used as a substitute for professional medical advice, diagnosis, or treatment. Always consult with a qualified healthcare provider for medical concerns.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Contact

For questions or support, please open an issue on GitHub.
