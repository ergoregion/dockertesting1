FROM python:3.9

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y \
    npm \
    libx11-xcb1 \
    libxcomposite1 \
    libxcursor1 \
    libxss1 \
    libgbm1 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libxrandr2 \
    libasound2 \
    libxdamage1 \
    libxi6 \
    libxtst6 \
    libnss3 \
    libcups2 \
    libatk1.0-0 &&\
    npm install --prefix ./ pa11y-ci

