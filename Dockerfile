
FROM alpine:latest
RUN yum install -y ruby ruby-devel; yum groupinstall -y 'Development Tools'; yum clean all
RUN gem install bundler

RUN mkdir -p /usr/src/svr
WORKDIR /usr/src/svr
ADD svr/Gemfile* ./
RUN bundle install
ADD svr/ ./
ENTRYPOINT ["/usr/src/svr/make_report" ]