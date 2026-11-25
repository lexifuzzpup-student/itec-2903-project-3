#!/bin/bash

source .env

# download plants for rag
echo "Downloading plant data"
mkdir -p plant_search_rag
wget "${BASE_API_URL}/search/price" -O plant_search_rag/plants.json

# generate rag embeddings
echo "Generating RAG embeddings"
python3 plant_search_rag/plant_search_rag.py
python3 return_policy_rag/return_policy_rag.py