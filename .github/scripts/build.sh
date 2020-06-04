set -x
npm install -g hackmyresume
cd src/ || exit
npm ci
cp themeCustomizations/mocha-responsive/resume.hbs node_modules/jsonresume-theme-mocha-responsive/resume.hbs
cp themeCustomizations/mocha-responsive/main.css node_modules/jsonresume-theme-mocha-responsive/styles/main.css
hackmyresume build resume.json to ../index.html -t node_modules/jsonresume-theme-mocha-responsive