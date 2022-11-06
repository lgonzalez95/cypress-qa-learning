CHROME_REPORT=cypress/reports/chrome/html/index.html
FIREFOX_REPORT=cypress/reports/firefox/html/index.html
EDGE_REPORT=cypress/reports/edge/html/index.html

if test -f "$CHROME_REPORT"; then
    sudo mv $CHROME_REPORT cypress/reports/chrome/html/chrome-report.html
fi

if test -f "$FIREFOX_REPORT"; then
    sudo mv $FIREFOX_REPORT cypress/reports/firefox/html/firefox-report.html
fi

if test -f "$EDGE_REPORT"; then
    sudo mv $EDGE_REPORT cypress/reports/edge/html/edge-report.html
fi