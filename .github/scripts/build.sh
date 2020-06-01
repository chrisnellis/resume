npm install -g hackmyresume
cd src/
npm ci
cp themeCustomizations/style.css node_modules/jsonresume-theme-flat/style.css
cp themeCustomizations/resume.template node_modules/jsonresume-theme-flat/resume.template
hackmyresume build resume.json to ../index.html -t node_modules/jsonresume-theme-flat