# !/bin/bash
#

for file in `find ./application -name *.php`;
do
  if [ "${file##*.}" = "php" ]; then
    echo "Check if $file compliants to psr2 .."
    ./vendor/bin/php-cs-fixer fix "$file" -v --level=psr2 --dry-run
    exit_code=$?
    if [ $exit_code != 0 ]; then
      echo "$file is not compliant to psr2, please fix it before commit, $exit_code."
      exit $exit_code
    fi
  fi
done

exit 0

