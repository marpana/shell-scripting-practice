read -p "Enter your age--" age
if [ "${age}" -lt 18 ]; then
  echo You are minor
  elif [ "${age}" -gt 60 ]; then
    echo you are senior citizen
  else
    echo You are major
fi