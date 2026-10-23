# ConstructVision AI 🦺🏗️
### AI-Powered Smart Construction Site Safety Monitoring, Real-Time PPE Violation Detection, Mobile Photo Alerts, Location Tracking, and BIM Integration System

A functional, modular, end-to-end software prototype suitable for a **B.Tech Civil Engineering final-year major project**, academic demonstration, research, and future industry development.

---

## 🌟 Key Highlights

- **AI PPE Detection**: Real-time YOLOv8 computer vision detecting workers (persons), safety helmets (hard hats), and high-visibility safety vests.
- **Spatial Reasoning**: Anatomical containment and IoU heuristics associating PPE with individual workers, with a 3-frame temporal confirmation filter to prevent false alarms.
- **Interactive 3D BIM Viewer**: Three.js WebGL structural building model (columns, beams, floor slabs) with real-time color-coded safety zones (Revit/IFC compatible).
- **Safety Manager Web Dashboard**: Glassmorphic UI with live AI video stream, event triage table, interactive photo inspection, and Chart.js analytics.
- **Mobile Push & Worker Portal**: Flutter mobile application and web-based mobile simulator for instant alert advisories, photographic proof, 1-tap acknowledgment, and contest reviews.
- **Privacy-First Location Tracking**: Strict separation of camera-mapped zones from consent-based worker GPS check-ins, with zero continuous background tracking.
- **Official Safety Reports**: Automated 1-click download of RFC 4180 CSV incident logs and signed PDF inspection audit reports.

---

## 🚀 One-Click Quick Start (Windows)

### 1. Launch Server & Dashboard
Right-click and run `run_demo.ps1` with PowerShell, or execute:

```powershell
# In PowerShell:
cd "c:\Users\siddh_vp\Desktop\ConstructVision AI"

# 1. Generate demo media & seed database
python scripts/generate_demo_media.py
python scripts/seed_demo_data.py

# 2. Run backend test suite
python -m pytest tests/test_backend.py -v

# 3. Start server
python -m uvicorn backend.app.main:app --host 0.0.0.0 --port 8000 --reload
```

### 2. Open Interfaces in Browser
- **Safety Manager Dashboard**: [http://localhost:8000/dashboard/](http://localhost:8000/dashboard/)
- **Interactive 3D BIM Model**: Click the *3D Interactive BIM Model* tab in the dashboard.
- **Worker Mobile App Simulator**: Click the *Worker Mobile App (Demo)* tab in the dashboard.
- **Swagger / OpenAPI Documentation**: [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 🔑 Demonstration Accounts

| Role | Username | Password | Access Capabilities |
|:---|:---|:---|:---|
| **Safety Manager** | `safetymanager` | `SafetyManager123!` | Live monitoring, event verification, action assignment, PDF export |
| **Administrator** | `admin` | `AdminPassword123!` | Full administration, camera registration, project config |
| **Field Worker** | `worker_rajesh` | `WorkerPass123!` | Alert acknowledgment, photo proof, contest review, GPS check-in |
| **Project Lead** | `projectlead` | `ProjectLead123!` | High-level analytics, safety trends, compliance audit exports |

---

## 📁 Project Directory Structure

```
ConstructVision AI/
│
├── backend/
│   ├── app/
│   │   ├── main.py                     # FastAPI entry point & static file mounts
│   │   ├── config.py                   # System configuration & thresholds
│   │   ├── api/                        # REST API routers (auth, cameras, events, bim, etc.)
│   │   ├── auth/                       # JWT security & role-based access control
│   │   ├── database/                   # SQLAlchemy engine & session provider
│   │   ├── models/                     # Relational database models (SQLite/PostgreSQL)
│   │   ├── schemas/                    # Pydantic request & response schemas
│   │   └── services/                   # Business logic (event state machine, image storage, bim, etc.)
│   └── requirements.txt                # Python dependencies
│
├── ai/
│   ├── detector.py                     # YOLOv8 object detector with OpenCV fallback
│   ├── event_rules.py                  # Anatomical spatial association & temporal filter
│   ├── evaluation.py                   # Precision, recall, F1, latency benchmarks
│   ├── model_setup.md                  # Machine learning setup & training guide
│   └── test_media/                     # Sample construction test video
│
├── dashboard/
│   └── index.html                      # Single-page web dashboard with Three.js 3D BIM viewer
│
├── mobile/                             # Cross-platform Flutter mobile client
│   ├── lib/
│   │   ├── main.dart                   # Flutter app entry point
│   │   ├── models/                     # Dart models (user, event)
│   │   ├── screens/                    # Login, worker home, alert detail, manager triage, GPS
│   │   └── services/                   # HTTP REST API client
│   ├── pubspec.yaml                    # Flutter dependencies
│   └── README.md                       # Mobile setup guide
│
├── bim/
│   ├── sample_model_instructions.md    # Autodesk Revit & IFC modeling guide
│   └── zone_mapping_template.csv       # Camera-to-BIM zone mapping matrix
│
├── data/
│   └── storage/                        # Protected local photo evidence repository
│
├── scripts/
│   ├── generate_demo_media.py          # Synthetic construction site video generator
│   └── seed_demo_data.py               # Database seeder with realistic demo data
│
├── tests/
│   └── test_backend.py                 # Automated unit & integration test suite (13 tests)
│
├── docs/
│   ├── architecture.md                 # System architecture documentation
│   ├── API.md                          # REST API endpoint reference
│   ├── installation.md                 # Windows PowerShell setup instructions
│   ├── testing.md                      # Test guide & demonstration viva script
│   ├── limitations.md                  # Known limitations & future scope
│   └── academic_project_report.md      # Full B.Tech Civil Engineering project report
│
├── run_demo.ps1                        # PowerShell one-click demo launcher
└── README.md                           # Main project readme
```

---

## 📜 Academic Verification & Integrity

All test results, architectural decisions, and performance figures reported reflect actual measurements executed on the system. The project strictly abides by Indian data privacy requirements (DPDP) by forbidding automated facial recognition and requiring worker consent for location logging.
