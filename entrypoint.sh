#!/bin/sh -l

THEME=${1}
RESUME=${2}
OUTPUT_HTML=${3}
OUTPUT_PDF=${4}

THEME_PACKAGE=jsonresume-theme-${THEME}
echo "Installing theme: ${THEME}"

# NOTE: this needs to be installed locally, not globally
npm install ${THEME_PACKAGE}

resume export --resume ${RESUME} --theme ${THEME} --format html ${OUTPUT_HTML}
resume export --resume ${RESUME} --theme ${THEME} --format pdf ${OUTPUT_PDF}
