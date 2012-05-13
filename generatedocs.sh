#!/usr/bin/env sh
/Applications/Doxygen.app/Contents/Resources/doxygen doxygen.config
make --silent -C docs/html
make --silent -C docs/latex
exit 0
