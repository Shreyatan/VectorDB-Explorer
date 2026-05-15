# AI-Powered Vector Database & RAG Engine

A fully functional **Vector Database** built completely from scratch in **C++** with an interactive **web-based visualization dashboard**.

This project demonstrates the internal working principles behind modern AI retrieval systems and Retrieval-Augmented Generation (RAG) pipelines instead of relying only on external APIs.

It implements and compares:

* **Brute Force Search**
* **KD-Tree Search**
* **HNSW (Hierarchical Navigable Small World)**

alongside a local-LLM-powered **RAG pipeline** using **Ollama**.

---

# Features

## Vector Search Algorithms

### Brute Force Search

* Exact nearest-neighbor retrieval
* Baseline for comparison
* High accuracy but slower scalability

### KD-Tree

* Tree-based spatial partitioning
* Faster than brute force for moderate dimensions
* Efficient nearest-neighbor lookup

### HNSW

* Approximate Nearest Neighbor (ANN) search
* Multi-layer graph navigation
* Production-style retrieval architecture used in modern AI systems

---

# Interactive Analytics Dashboard

The project includes a real-time visualization dashboard for comparing:

* Search Latency
* Recall / Accuracy
* Memory Usage
* Algorithm Scalability

Charts are rendered dynamically using Chart.js.

---

# RAG Pipeline

Integrated a Retrieval-Augmented Generation (RAG) system using:

* Ollama
* nomic-embed-text
* llama3.2

Features:

* Document ingestion
* Automatic chunking
* Embedding generation
* Semantic retrieval
* AI-powered question answering

---

# Web Interface

Interactive frontend includes:

* 2D PCA vector-space visualization
* Semantic clustering display
* Search result highlighting
* HNSW layer visualization
* Real-time analytics dashboard
* AI document chat interface

---

# Tech Stack

## Backend

* C++17
* httplib
* Custom VectorDB implementation

## Frontend

* HTML
* CSS
* JavaScript
* Chart.js

## AI / RAG

* Ollama
* llama3.2
* nomic-embed-text

---

# Project Architecture

```text
User Query
     ↓
Text Embedding
     ↓
Vector Search Engine
 ├── Brute Force
 ├── KD-Tree
 └── HNSW
     ↓
Top-K Retrieval
     ↓
RAG Context Injection
     ↓
Local LLM (Ollama)
     ↓
AI Response
```

---

# Performance Benchmarking

The system benchmarks all algorithms side-by-side to compare:

| Metric          | Brute Force | KD-Tree  | HNSW      |
| --------------- | ----------- | -------- | --------- |
| Latency         | Higher      | Medium   | Lowest    |
| Recall Accuracy | Highest     | Medium   | High      |
| Scalability     | Poor        | Moderate | Excellent |
| Memory Usage    | Low         | Medium   | Higher    |

---

# Installation

## 1. Clone Repository

```bash
git clone <your-repo-link>
cd <repo-name>
```

---

## 2. Install Ollama

Download Ollama:

[https://ollama.com](https://ollama.com)

Pull required models:

```bash
ollama pull nomic-embed-text
ollama pull llama3.2
```

---

# Running the Backend

Compile:

```bash
g++ -std=c++17 main.cpp -o db.exe -lws2_32
```

Run:

```bash
./db.exe
```

Server runs on:

```text
http://localhost:8080
```

---

# Running the Frontend

Open:

```text
index.html
```

in your browser.

---

# Learning Outcomes

This project helped in understanding:

* Vector databases
* Approximate nearest-neighbor search
* Embedding systems
* Retrieval-Augmented Generation (RAG)
* Similarity search optimization
* AI infrastructure engineering
* Semantic retrieval systems
* Performance benchmarking
* Systems-level AI architecture

---

# Future Improvements

* PDF/DOCX ingestion
* Streaming LLM responses
* Multi-user workspaces
* Vector quantization
* Distributed indexing
* GPU acceleration
* Hybrid BM25 + semantic retrieval
* Live HNSW traversal animation

---

# Why This Project?

Most AI projects rely entirely on APIs.

This project focuses on understanding how modern AI retrieval systems work internally by implementing core concepts from scratch, including vector indexing, ANN search, retrieval pipelines, and semantic similarity.

---

# Author

Shreya Tandon

AI • Vector Search • RAG • Systems Engineering
