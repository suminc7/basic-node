FROM node:boron

# 앱 디렉토리 생성
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# 앱 의존성 설치
COPY package.json /usr/src/app/package.json


# 앱 소스 추가
COPY . /usr/src/app

ENV NODE_ENV development

RUN cd /usr/src/app; npm install

EXPOSE 8080
CMD ["npm", "start"]