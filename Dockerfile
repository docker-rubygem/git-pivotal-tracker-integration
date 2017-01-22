FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.0

RUN gem install git-pivotal-tracker-integration --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["git-finish"]
CMD ["--help"]
