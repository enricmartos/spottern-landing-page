## Description

This project aims to create a landing page using [Agency](http://startbootstrap.com/template-overviews/agency/), which is a one page agency portfolio theme for [Bootstrap](http://getbootstrap.com/) created by [Start Bootstrap](http://startbootstrap.com/). This theme features several content sections, a responsive portfolio grid with hover effects, full page portfolio item modals, a responsive timeline, and so on. 

Please note that filling and sending the contact form will not generate any effect, since there is no backend implementation for this project. Therefore, the programming languages involved here are just HTML and CSS. 

Take look at the final result here: https://enricmartos.github.io/spottern-landing-page

## Deploy with Heroku

The docker image [enricmartos/sporttern-landing-page]https://hub.docker.com/repository/docker/enricmartos/spottern-landing-page/) is currently available on Docker Hub. Also, this static page has been deployed with Heroku. You can find it here: https://spottern-landing-page.herokuapp.com/ 

## CI with GitHub Actions

The workflow defined in [main.yml](https://github.com/enricmartos/spottern-landing-page/blob/master/.github/workflows/main.yml) consists of two jobs:

- docker_hub_release: Build and push the docker image to Docker Hub registry
- heroku_release: Deploy the master branch to Heroku 

## Build setup

### With Docker

- Clone this repo to your local machine

```
# Build and run the docker image with docker-compose

$ docker-compose -f docker-compose-test.yml up

```
- Open your browser and test the application on *localhost:8000*

## References

- [heroku-docker-nginx-example](https://elements.heroku.com/buttons/rjoonas/heroku-docker-nginx-example)
- [Serve static files from docker via nginx](https://www.linkedin.com/pulse/serve-static-files-from-docker-via-nginx-basic-example-arun-kumar/) 
