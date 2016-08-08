# wkhtmltoimage-docker

Make it really easy to take a screenshot of a website.

This is a image that I first built to run on CircleCI

```
$ docker run -it -v $(pwd):/images kevinsimper/wkhtmltoimage http://google.dk /images/google.png
starting
Loading page (1/2)
Rendering (2/2)
Done
```

If you want to take a picture of another docker container, use `--net=host`.

```
$ docker run --net=host -it -v $(pwd):/images kevinsimper/wkhtmltoimage http://localhost:9000 /images/google.png
```

Because Docker for Mac and Docker for Windows is different, you can't use localhost to get the to the apps exposed on your machine.

You can instead on Windows and Mac use `dockerhost` and start.sh will replace it with the correct IP.

```
$ docker run --net=host -it -v $(pwd):/images kevinsimper/wkhtmltoimage http://dockerhost:9000 /images/google.png
```
