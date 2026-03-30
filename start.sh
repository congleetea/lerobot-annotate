#!/bin/bash
# Usage: ./start.sh <host> <port>
# Example: ./start.sh 192.168.1.100 7865

HOST=${1:-0.0.0.0}
PORT=${2:-7865}

source .venv/bin/activate
uvicorn backend.app:app --reload --port $PORT --host $HOST