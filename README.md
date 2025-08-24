# patch-demo-safe

**Purpose:** A harmless demo repository to test how GitHub generates `.patch` URLs for Pull Requests.  
This repo is intentionally simple and safe—no prompt-injection content and no exploitation steps.

## How to use

1. Initialize a local git repo and push to GitHub:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: safe demo"
   git branch -M main
   git remote add origin https://github.com/<YOUR-USER>/patch-demo-safe.git
   git push -u origin main
   ```

2. Create a feature branch and a harmless change:
   ```bash
   git checkout -b feature/update-text
   ./scripts/make_change.sh "Harmless change on $(date +%F)"
   git add dummy.txt
   git commit -m "Add harmless line"
   git push -u origin feature/update-text
   ```

3. Open a Pull Request on GitHub (Compare & pull request).  
   After the PR is created, GitHub exposes a `.patch` URL like:
   ```
   https://github.com/<YOUR-USER>/patch-demo-safe/pull/<PR_NUMBER>.patch
   ```

4. **What to verify:** You can view that `.patch` URL in a browser and confirm it contains the textual diff of your PR.

## Notes
- Keep all content neutral and safe.
- This repository is for demonstrating PR diffs only.
- If you report findings to a vendor, follow responsible disclosure best practices.