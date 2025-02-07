Here's a **GitHub Actions demo for Python**, covering **jobs, triggers, and runners** while running Python tests using `pytest`.  

---

## **Step 1: Create the Workflow File**
Inside your GitHub repository, create:  
📂 `.github/workflows/python-ci.yml`

```yaml
name: Python CI Demo

# Trigger: Runs on push and pull requests to the main branch
on:
  push:
    branches:
      - main
  pull_request:

# Define jobs
jobs:
  test:
    name: Run Python Tests
    runs-on: ubuntu-latest  # GitHub-hosted runner

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4  # Fetches repository code

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.10"  # Specify the Python version

      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt  # Install dependencies from requirements file

      - name: Run Tests
        run: pytest  # Runs tests using pytest
```

---

## **Step 2: Add Python Code & Tests**
Ensure your repo has:
1. A **requirements.txt** file listing dependencies (e.g., `pytest`).
2. A Python script (`app.py`) with a simple function.
3. A test script (`test_app.py`) using `pytest`.

---

### **Example Python Code (`app.py`)**
```python
def add(a, b):
    return a + b
```

### **Example Test Code (`test_app.py`)**
```python
from app import add

def test_add():
    assert add(2, 3) == 5
```

### **Example `requirements.txt`**
```
pytest
```

---

## **How This Works**
- **Triggers**: Runs on **push** and **pull requests**.
- **Jobs**: 
  - Runs tests in a job named `"Run Python Tests"`.
- **Steps**:
  - Checkouts code.
  - Sets up Python 3.10.
  - Installs dependencies (`pip install -r requirements.txt`).
  - Runs tests with `pytest`.

---

## **How to Test?**
1. Commit & push everything (`app.py`, `test_app.py`, `requirements.txt`, `.github/workflows/python-ci.yml`).
2. Go to **GitHub → Actions** to see the workflow running.
3. Modify the code and push again to trigger it.

---

### **Next Steps**
- Add **code linting** (`flake8`, `black`).
- Run tests on multiple **Python versions** using a **matrix strategy**.
- Deploy the application (e.g., to AWS, Heroku).

Would you like any enhancements? 🚀
