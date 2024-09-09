#! /bin/bash
 
if ! command -v pytest &> /dev/null; then
    echo "pytest not found. Installing pytest..."
    pip install pytest
fi

if ! pip show pytest-html &> /dev/null; then
    echo "pytest-html not found. Installing pytest-html..."
    pip install pytest-html
fi

echo 'Simple pytest run :'
pytest tests.py

echo 'Run pytest -v'
pytest -v tests.py

echo 'Generate html:'
pytest --html=report.html tests.py

echo 'Open report.html with your browser...'
 
 
echo 'Simple pytest run :'
 
pytest tests.py
 
echo 'Run pytest -v'
 
pytest -v tests.py
 
echo 'Generate html:'
 
pytest --html=report.html tests.py


echo 'Open report.html with yours browser, like: google-chrome report.html'

xdg-open report.html
# google-chrome report.html
