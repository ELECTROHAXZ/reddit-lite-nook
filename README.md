# reddit-lite-nook

Available at [r.nook.tk](https://r.nook.tk)

A lightweight, minimal, readonly Reddit client, designed for Nook.
![comments](https://jamesbarnett.io/files/reddit-lite/screenshots/rl3.png)

## Running locally
Reddit-lite is written in Kotlin using the [Spring Boot](https://spring.io/projects/spring-boot) framework.
You will need Java 8 or later to run it.

```sh
git clone https://github.com/jamesbarnett91/reddit-lite && cd reddit-lite
./gradlew bootRun
```
Alternatively, you can pull the `jbarnett/reddit-lite` docker image and run that.
```sh
docker run --name reddit-lite -d -p 8080:8080 jbarnett/reddit-lite
```
Then navigate to `localhost:8080` in your browser.

Or go to [r.nook.tk](https://r.nook.tk) for a hosted version.

## TODOs
* ~~option to hide thumbnails~~ [done]
* ~~collapsible comments~~ [done]
* async load of deeply nested comments
* ~~sort posts/comments by top/hot/new~~ [done]
* view subreddit info/sidebar
* highlight gilded posts/comments
* highlight comments from OP
* should probably write some tests...
