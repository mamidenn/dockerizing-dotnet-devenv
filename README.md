The most basic .Net 5 development environment in a container.

To get started, build it:

```
docker build . -t devcontainer --build-arg UID=$(id -u) --build-arg GID=$(id -g)
```

Then run it:

```
docker run -it --rm -v $(pwd)/workspace devcontainer
```

