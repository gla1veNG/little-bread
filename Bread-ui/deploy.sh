rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m 'update' &&
git branch -M main &&
git remote add origin git@github.com:gla1veNG/Bread-ui.git &&
git push -f -u origin main &&
cd -