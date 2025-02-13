read -p "Enter your age--" age
if [ "${age}" -lt 18 ]; then
  echo You are minor
  else
    echo You are major
fi