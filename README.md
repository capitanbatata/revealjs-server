# Web-server for revealjs content

To build the container:

``` sh
docker build -t dnadales/revealjs-server .
```

To start the container, navigate to the directory hosting the slides and run:
``` sh
docker run -p 49160:8000  -v `pwd`:/revealjs/presentation/ --rm dnadales/revealjs-server:latest
```
