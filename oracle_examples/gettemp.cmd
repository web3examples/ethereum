set URL="http://weerlive.nl/api/json-data-10min.php?key=demo&locatie=Amsterdam"
curl  %URL%  --fail --silent --show-error | jq .liveweer[0].temp
pause

