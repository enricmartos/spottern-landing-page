name: CI

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
#     - name: build docker image and push it to docker hub
#       env:
#         DOCKER_HUB: ${{ secrets.DOCKER_HUB }}
#         DOCKER_HUB_KEY: ${{ secrets.DOCKER_HUB_KEY }}
#       run: |
#         ls -l
#         echo 'Docker login'
#         docker login -u $DOCKER_HUB -p $DOCKER_HUB_KEY
#         echo 'Running build...'
#         docker build . -t enricmartos/spottern-landing-page:latest
#         echo 'Pushing image...'
#         docker push enricmartos/spottern-landing-page:latest
#         echo 'Done!..'
#         echo 'Pushing image...'
#         docker push enricmartos/spottern-landing-page:latest
#         echo 'Done!'
#         docker build -t spottern-landing-page .
    - name: Deploy to Heroku
      env:
        HEROKU_API_KEY: ${{ secrets.HEROKU_API_KEY }}
        HEROKU_APP_NAME: "spottern-landing-page"
      if: github.ref == 'refs/heads/master' && job.status == 'success'
      run: git push https://heroku:$HEROKU_API_TOKEN@git.heroku.com/$HEROKU_APP_NAME.git origin/master:master
