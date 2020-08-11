FROM okteto/python:3

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    curl -o- -L https://yarnpkg.com/install.sh | bash && \
    apt-get update && \
    apt-get install -y nodejs yarn && \
    /usr/local/bin/python -m pip install --upgrade pip
