Inspired by https://github.com/j-mcnally/docker-sphinx-2.0.8

# BUILD WITH

```
docker build -t amols/sphinx:2.0.8 .
docker push amols/sphinx:2.0.8
```

# RUN WITH

```
docker run -d -v $HOME/sphinx:$HOME/sphinx -e SPHINX_CONF_FILE=$HOME/sphinx/conf/sphinx.conf --name=sphinx sphinx:2.0.8
```
