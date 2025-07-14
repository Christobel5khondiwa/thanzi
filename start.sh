#!/bin/bash
# Start script for Render deployment

echo "🚀 Starting Thanzi Disease Prediction API on Render..."
echo "📦 Installing dependencies..."

# Install dependencies
pip install -r requirements.txt

echo "🔧 Starting the API server..."
# Start the FastAPI application
python thanzi.py
