# Gitlab Runner with docker-compose

Gitlab runner easily explained and dockerized with compose.

## Principle

A _runner_ is an external machine or VM on which Gitlab pipelines will be executed once the machine has been registered.

Your runner machine is a standalone machine that will automatically be ping by Gitlab, clone your project and execute a serie of test as described by your `gitlab-ci.yml` file or through the _Auto DevOps_ feature of Gitlab.

So we have two things to do :
1. Create the runner server
2. Register the runner to your Gitlab instance

