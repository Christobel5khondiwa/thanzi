FROM python:3.11-slim

WORKDIR /app

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy model files and code
COPY best_model.pkl .
COPY label_encoder.pkl .
COPY symptom_features_correct.pkl .
COPY doc_data.csv .
COPY thanzi.py .

# Expose port
EXPOSE 8000

# Run the application
CMD ["python", "thanzi.py"]
