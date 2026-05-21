#!/bin/bash
# Step 1: Initialize git and commit
cd my-app
git init
git add .
git commit -m "Initial commit"

# Step 2: Create public GitHub repo and push
# (Repo created: https://github.com/knandakumar25/bb-propelleraero.git)
gh repo create knandakumar25/bb-propelleraero --public --source=. --remote=origin --push

# Step 3: Switch to update_logo branch
git checkout -b update_logo

# Step 4: Replace logo
curl -L -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# Step 5: Update link in App.js
# (Already updated in code)

# Step 6: Commit and push changes
git add src/logo.svg src/App.js
git commit -m "Update logo and link"
git push origin update_logo

# Step 7: Create PR
gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaces logo and updates link."

# Step 8: Merge PR
gh pr merge --merge

# REPO_URL https://github.com/knandakumar25/bb-propelleraero.git
git init
git add .
git commit -m 'Initial commit'
gh repo create --public --source=. --remote=origin --push
git checkout -b update_logo
curl -L -o src/logo.svg https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
(Get-Content src/App.js).replace('src/logo.svg','src/logo.svg').replace('https://reactjs.org','https://www.propelleraero.com/dirtmate/') | Set-Content src/App.js
git add src/logo.svg src/App.js
git commit -m 'Update logo and link'
git push origin update_logo
gh pr create --base master --head update_logo --title 'Update logo and link' --body 'Replaces logo and updates link.'
gh pr merge --merge
# REPO_URL https://github.com/knandakumar25/bb-propelleraero.git
