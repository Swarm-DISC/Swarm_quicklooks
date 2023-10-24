current_hour=$(date +"%Y-%m-%d-H%H")
./build-book.sh
netlify deploy --dir=jupyterbook/_build/html --alias=$current_hour