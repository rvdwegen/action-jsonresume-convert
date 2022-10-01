FROM node:16

LABEL repository="https://github.com/rvdwegen/action-jsonresume-convert"
LABEL maintainer="Roel van der Wegen <github@aeternus.tech>"

RUN apt-get update && apt-get install -y libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libgbm1 libasound2 libx11-dev libx11-6 libx11-xcb1 libxcb1
RUN npm install -g resume-cli@3.0.7
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
