# REPO_URL https://github.com/fguo10/black_bird_project
# 1. Create react app using the create-react-app tool https://github.com/facebook/create-react-app#quick-overview
npx create-react-app black_bird_project
# 2. Commit the code, create GitHub repo using GitHub CLI
gh auth login
gh repo create black_bird_project --public --source=. --remote=upstream
# 3. Switch branch to "update_logo"
git checkout -b update_logo
# 4. Replace existing logo with https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg

# 5. Replace existing link with https://www.propelleraero.com/dirtmate/

# 6. Commit, then push the code
git add *
git commit -m "modify logo and link in APP.js"

# 7. Create PR from “update_logo” to “master” branch using GitHub CLI
gh pr create --title "Modify logo and link" --body "Modify logo and link in APP.js"

# 8. Merge the PR using GitHub CL
gh pr merge update_logo