#!/bin/bash
# Grand Chord DM Screen launcher (Mac/Linux)
# Double-click this file or run: ./start.sh
cd "$(dirname "$0")"
echo ""
echo "Starting Grand Chord DM Screen..."
echo ""
echo "Once it says 'Serving HTTP on...', open your browser to:"
echo ""
echo "    http://localhost:8000/session_prep.html"
echo ""
echo "When you're done, close this window or press Ctrl+C."
echo ""
sleep 1

# Try Python 3 first, fall back to Python 2
if command -v python3 &> /dev/null; then
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 8000
else
    echo "ERROR: Python is not installed."
    echo "Install Python from https://www.python.org/downloads/ and try again."
    read -p "Press Enter to close..."
fi
