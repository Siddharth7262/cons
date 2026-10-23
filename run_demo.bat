@echo off
title ConstructVision AI Demonstration Launcher
echo ==========================================================
echo  ConstructVision AI - Smart Construction Site Safety System
echo  Civil Engineering + AI + Computer Vision + BIM Integration
echo ==========================================================

echo [1/3] Generating demo media and seeding database...
python scripts/generate_demo_media.py
python scripts/seed_demo_data.py

echo [2/3] Running automated verification test suite...
python -m pytest tests/test_backend.py -v --tb=short

echo [3/3] Starting server on http://localhost:8000/dashboard/ ...
start http://localhost:8000/dashboard/
python -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000
pause
