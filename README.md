## Description

This project aims to create a landing page using [Agency](http://startbootstrap.com/template-overviews/agency/), which is a one page agency portfolio theme for [Bootstrap](http://getbootstrap.com/) created by [Start Bootstrap](http://startbootstrap.com/). This theme features several content sections, a responsive portfolio grid with hover effects, full page portfolio item modals, a responsive timeline, and so on. 

Please note that filling and sending the contact form will not generate any effect, since there is no backend implementation for this project. Therefore, the programming languages involved here are just HTML and CSS. 

Take look at the final result here: https://enricmartos.github.io/spottern-landing-page

## Deploy with Heroku

The docker image [enricmartos/sporttern-landing-page](https://cloud.docker.com/repository/docker/enricmartos/spottern-landing-page/) is currently available on Docker Hub. Also, this static page has been deployed with Heroku. You can find it here: https://spottern-landing-page.herokuapp.com/ 

## Build setup

### With Docker

- Clone this repo to your local machine

```
# Build docker image

$ docker build -f Dockerfile-test -t spottern-landing-page .

# Run docker image

$ docker run -p 8000:80 -i spottern-landing-page

```
- Open your browser and test the application on *localhost:8000*
