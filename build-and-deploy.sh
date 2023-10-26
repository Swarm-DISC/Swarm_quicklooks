current_hour=$(date +"%Y-%m-%d-H%H")
./build-book.sh
if [ -n "$NETLIFY_SITE_ID" ]; then
  netlify deploy --dir=jupyterbook/_build/html --alias="$current_hour" --site="$NETLIFY_SITE_ID" --auth="$NETLIFY_AUTH_TOKEN"
else
  netlify deploy --dir=jupyterbook/_build/html --alias=$current_hour 
fi