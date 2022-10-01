FROM node:12

LABEL repository="https://github.com/kelvintaywl/jsonresume-github-page"
LABEL homepage="https://github.com/kelvintaywl/jsonresume-github-page"
LABEL maintainer="Roel van der Wegen <github@aeternus.tech>"

RUN npm install -g resume-cli@3.0.7
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
