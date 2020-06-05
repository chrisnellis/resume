set -x
sudo apt-get install -y -qq wkhtmltopdf=0.12.4-1 xvfb
npm install -g hackmyresume
cd src/ || exit
npm ci
cp themeCustomizations/onepage/resume.hbs node_modules/jsonresume-theme-onepage/resume.hbs
cp themeCustomizations/onepage/style.css node_modules/jsonresume-theme-onepage/style.css
hackmyresume build resume.json to ../pdf.html -t node_modules/jsonresume-theme-onepage
xvfb-run wkhtmltopdf --print-media-type --no-background --page-size Letter ../pdf.html ../Nellis-Resume.pdf
rm ../pdf.html