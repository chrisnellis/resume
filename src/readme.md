# Setup

* Run `npm install` in this directory

# Apply theme modifications

From the source directory:
* Run `cp themeModifications/claude_index.js node_modules/jsonresume-theme-claude/index.js`
* Run `cp themeModifications/engineering_resume.hbs node_modules/jsonresume-theme-engineering/resume.hbs`
* Run `cp themeModifications/engineering_item_details.hbs node_modules/jsonresume-theme-engineering/partials/item-details.hbs`

# Build Website Resume

* Run `npx resume export resume.html --theme claude -r websiteResume.json`

# Build PDF Resume

* Run `npx resume export pdfResumeStyle.html --theme engineering -r pdfResume.json`
* Open html page in browser
* Print page as PDF
