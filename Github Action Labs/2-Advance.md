Here's a complete **end-to-end GitHub Actions tutorial** covering advanced topics like:  

- **Secrets & Variables**
- **Approvals**
- **Environments**
- **Matrix Builds**
- **Artifacts**
- **Conditional Workflows**  

This example sets up a **CI/CD pipeline** for a Node.js application that includes:  

1. Running tests on multiple Node.js versions  
2. Uploading test reports as artifacts  
3. Deploying to different environments (**staging & production**)  
4. Using **manual approvals** before deployment  
5. Storing and using **GitHub Secrets**  

---

## **Step 1: Create the GitHub Actions Workflow**  
Save the following YAML file inside `.github/workflows/ci-cd.yml` in your repository.  

```yaml
name: CI/CD Pipeline

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main
  workflow_dispatch:

jobs:
  test:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [14, 16, 18]
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Set up Node.js ${{ matrix.node-version }}
        uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}

      - name: Install dependencies
        run: npm install

      - name: Run tests
        run: npm test

      - name: Upload test reports
        uses: actions/upload-artifact@v4
        with:
          name: test-reports
          path: test-results/

  build:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 18

      - name: Install dependencies
        run: npm install

      - name: Build project
        run: npm run build

      - name: Upload build artifacts
        uses: actions/upload-artifact@v4
        with:
          name: build-output
          path: dist/

  deploy:
    needs: build
    environment: production
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Download build artifacts
        uses: actions/download-artifact@v4
        with:
          name: build-output
          path: dist/

      - name: Deploy to Production
        env:
          API_KEY: ${{ secrets.API_KEY }}
          DEPLOY_SERVER: ${{ vars.DEPLOY_SERVER }}
        run: |
          echo "Deploying to $DEPLOY_SERVER"
          curl -X POST -H "Authorization: Bearer $API_KEY" https://example.com/deploy
```

---

## **Step 2: Configure Secrets & Variables in GitHub**  

1. **Go to your repository → Settings → Secrets and variables → Actions**
2. **Secrets**
   - `API_KEY`: Add your API key for deployment
3. **Variables**
   - `DEPLOY_SERVER`: Add your server URL (e.g., `https://staging.example.com`)

---

## **Step 3: Add Environment with Manual Approval**
1. **Go to Repository → Settings → Environments**
2. Create a new environment **"production"**
3. Enable **"Required reviewers"** to enforce manual approval before deploying.

---

## **Step 4: Trigger the Workflow**
- Push to `main` or create a Pull Request to see the workflow in action.
- Approve the deployment in **GitHub Environments**.

---

### **What This Does**
✅ Runs tests on **multiple Node.js versions**  
✅ Uploads **test reports** as artifacts  
✅ Builds & uploads **build artifacts**  
✅ Uses **GitHub Secrets & Variables** for security  
✅ Deploys **only after manual approval**  

---

Would you like me to modify this for your specific tech stack? 🚀
