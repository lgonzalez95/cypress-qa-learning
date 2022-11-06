# qa-learning

This is a basic project that makes use of different technologies like `Cypress, and Docker` to do browser compatibility testing. Also, it integrates `Github` and its `Hooks`, as well as `Jenkins` in order to be able to pipelines in the Google Could Platform.

## Getting Started

Download the required dependecies: open a terminal at the project structure level and run:

```bash
npm install
```

## Cypress tests

In order to run the cypress tests locally make sure that you already downloaded the dependencies and then run:

```bash
docker build -t cypress-test-runner . # builds the corresponding cypress image
docker-compose up --force-recreate # brings up docker containers to all set of tests in each container
```

## Next steps

We will continue with the following steps in the workshop:

1. Creating a GCP project (A credit or debit card will be required to start using the free trial period, it can be removed later)
2. Creating a virtual machine where our Jenkins will be installed.
3. Installing the required applications in the VM.
4. Setting up the applications.
5. Creating and configuring the Jenkins pipeline.
6. Setting up our email server.
7. Setting up our GitHub build triggers.
