# !/bin/bash
#

for file in `find ./application/tests -name *.php -not -path "*/application/tests/_ci_phpunit_test/*"`;
do
  if [ "${file##*.}" = "php" ]; then
    echo "Check if $file compliants to psr2 .."
    ./vendor/bin/php-cs-fixer fix "$file" -v --dry-run
    exit_code=$?
    if [ $exit_code != 0 ]; then
      echo "$file is not compliant to psr, please fix it, $exit_code."
      exit $exit_code
    fi
  fi
done

exit 0

