set -x
npm install -g hackmyresume
cd src/
npm ci
hackmyresume build resume.json to ../index.html -t node_modules/jsonresume-theme-mocha-responsive