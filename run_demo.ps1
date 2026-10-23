# ConstructVision AI - One-Click Demonstration Launcher
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " ConstructVision AI - Smart Construction Site Safety System " -ForegroundColor Green
Write-Host " Civil Engineering + AI + Computer Vision + BIM Integration " -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Cyan

# 1. Check/Seed Database
Write-Host "[1/3] Verifying database and demonstration assets..." -ForegroundColor Gray
python scripts/generate_demo_media.py
python scripts/seed_demo_data.py

# 2. Run Test Suite
Write-Host "[2/3] Running automated verification test suite..." -ForegroundColor Gray
python -m pytest tests/test_backend.py -v --tb=short

# 3. Launch Server & Open Browser
Write-Host "[3/3] Starting ConstructVision AI Server on http://localhost:8000..." -ForegroundColor Green
Start-Process "http://localhost:8000/dashboard/"
python -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000
