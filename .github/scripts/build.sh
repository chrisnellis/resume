npm install -g hackmyresume
pwd
cd src/
pwd
npm ci
cp customStylesheet.css node_modules/jsonresume-theme-flat/style.css
hackmyresume build resume.json to ../index.html -t node_modules/jsonresume-theme-flat