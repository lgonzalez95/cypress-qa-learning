#!/bin/bash
set -u

if [ $BROWSER == 'chrome' ] || [ $BROWSER == 'firefox' ] || [ $BROWSER == "edge" ] ; then
  echo "**************************************************************************"
  if [ $ONDEMAND == 'true' ]; then
    echo "    🚀🚀🚀 Executing the tests on demand in $ENV environment for $BROWSER browser 🚀🚀🚀    "
    echo "**************************************************************************"
    cypress run --spec cypress/e2e/Home.cy.ts --browser ${BROWSER} --headless --env $ENV=1
  else
    echo "    🚀🚀🚀 Executing the tests in $BROWSER 🚀🚀🚀    "
    echo "**************************************************************************"
    cypress run --spec cypress/e2e/Home.cy.ts --browser ${BROWSER} --headless --env dev=1
  fi
else
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo "    🚨🚨 $BROWSER is not a valid browser, you need to set chrome, firefox or edge 🚨🚨    "
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    exit
fi