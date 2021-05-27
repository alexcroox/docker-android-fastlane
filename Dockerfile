FROM mingc/android-build-box:1.20.0

# Installing build tools
RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev \
  libcurl4 \
  libcurl4-openssl-dev \
  git-crypt

# Install Nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs git --force-yes -y
