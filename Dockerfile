FROM ruby:2.1.4
RUN gem install fluentd --no-ri --no-rdoc
RUN fluentd --setup ./fluent
ENTRYPOINT ["fluentd"]
CMD ["-c", "./fluent/fluent.conf", "-vv"]
