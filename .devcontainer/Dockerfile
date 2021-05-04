FROM ruby:3.0.1

RUN apt-get update && \
 apt-get install curl -y && \
 curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
 curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
 echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
 apt-get update && \
 apt-get install libsqlite3-dev sqlite3 nodejs yarn -y && \
 apt-get clean
RUN adduser --disabled-password --gecos "" --shell /bin/bash vinicius
CMD /bin/bash
