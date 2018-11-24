FROM jekyll/jekyll:3.8

# RUN gem install bundler jekyll
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

RUN mkdir -p /code/build/
COPY . /code
WORKDIR /code
