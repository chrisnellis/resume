set -x
sudo apt-get install -y wkhtmltopdf=0.12.5-1
npm install -g hackmyresume
cd src/ || exit
npm ci
cp themeCustomizations/onepage/resume.hbs node_modules/jsonresume-theme-onepage/resume.hbs
cp themeCustomizations/onepage/style.css node_modules/jsonresume-theme-onepage/styles/style.css
hackmyresume build resume.json to ../pdf.html -t node_modules/jsonresume-theme-onepage
wkhtmltopdf --print-media-type --no-background --page-size Letter ../pdf.html ../Nellis-Resume.pdf
rm ../pdf.html