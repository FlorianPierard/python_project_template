# Python Project Template

This repository provides a **clean, professional Python project structure** that can be used as a starting point for new projects.  
It is designed for:
- Reproducible development environments
- Easy packaging and testing
- Clear organization of code, data, and documentation
- Docker support for deployment or CI/CD
- Secure management of secrets using `.env` (excluded from Git)

---

## 📂 Project Structure

```
mon_projet/
├── src/
│   └── mon_projet/          # Main Python package (rename to your project name)
│       ├── __init__.py
│       ├── core/            # Core business logic
│       ├── models/          # Machine learning models or weights
│       └── utils/           # Utility functions
│
├── data/               # Static files (datasets, images, templates)
│   ├── datasets/
│   ├── images/
│   └── templates/
│
├── tests/                   # Unit and integration tests
├── docs/                    # Documentation (Sphinx, MkDocs, etc.)
├── data/                    # Storing lightweight data
│
├── .env                     # Environment variables (secrets) – ignored by Git
├── .gitignore               # Preconfigured to exclude venv, .env, and temporary files
├── Dockerfile               # Docker configuration (at the project root)
├── pyproject.toml           # Project configuration (Poetry or setuptools)
├── requirements.txt         # Dependencies (for pip)
└── README.md
```

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/FlorianPierard/python_project_template.git [Your project name]
cd new_project
```

### 2. Create a virtual environment
```bash
python3 -m venv .venv
source .venv/bin/activate  # On Linux/Mac
# .venv\Scripts\activate   # On Windows
```

### 3. Install dependencies
```bash
pip install -r requirements.txt
```
Or, if using **Poetry**:
```bash
poetry install
```

### 4. Environment variables
- Store all sensitive information (API keys, tokens, secrets) in a `.env` file at the project root.  
- The `.env` file is already **excluded from Git** via `.gitignore`.

Load it in your code with `python-dotenv`:
```python
from dotenv import load_dotenv
load_dotenv()  # Load variables from .env
```

### 5. Run the project
```bash
python -m mon_projet.main
```

---

## 🐳 Using Docker

Build and run the container:
```bash
docker build -t mon_projet .
docker run -it --rm --env-file .env mon_projet
```

For development (with live reloads), you can configure `docker-compose` (optional).

---

## 📦 Customizing the Template

1. Rename the package folder:
   ```bash
   mv src/mon_projet src/<your_project_name>
   ```
2. Update imports in your code accordingly:
   ```python
   from <your_project_name> import utils
   ```
3. Update `pyproject.toml` (or `setup.py`) with your new project name.
4. Update `README.md` with your project-specific information.

---

## 🧪 Running Tests
Tests use **pytest** by default:
```bash
pytest
```

For **large datasets or models**, consider:
- Using **Git LFS** or **DVC**  
- Or storing them externally (S3, Google Drive, Hugging Face Hub)

---

## 📄 License
This template is released under the MIT License.

---

## 🛠 Future Features
- [ ] CI/CD pipeline example (GitHub Actions)  
- [ ] Pre-configured linting (Black, Flake8)  
- [ ] Automated Docker builds for production  