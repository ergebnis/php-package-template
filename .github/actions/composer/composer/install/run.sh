#!/usr/bin/env bash

dependencies="${COMPOSER_INSTALL_DEPENDENCIES}"

case "${dependencies}" in
  "lowest")
    composer update --no-interaction --no-progress --no-suggest --prefer-lowest
    exit $?
    ;;

  "locked")
    composer install --no-interaction --no-progress --no-suggest
    exit $?
    ;;

  "highest")
    composer update --no-interaction --no-progress --no-suggest
    exit $?
    ;;

  *)
    echo "::error::The value for the \"dependencies\" input needs to be one of \"lowest\", \"locked\"', \"highest\"' - got \"${dependencies}\" instead."
    exit 1
    ;;
esac
