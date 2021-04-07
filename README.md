# Dotfiles

This is my `dotfiles`, a shell script to install my local OSX machine. Try to run the command below to install the list of tools.

## Getting Started

If you're new here, you can start running the command below. It will download [Homebrew](https://brew.sh) (a Package Manager for macOS), install all [programming languages, tools, and open source softwares](#List-of-programming-languages-tools-and-open-source-softwares), and set up the .zsh environment.

The terminal will prompt few datas, like git username and password.

```sh
bash install.sh
```

## Update IBM Cloud CLI plugins

The IBM Cloud team regularly updates the **IBM Cloud CLI** and the **plugins**. So you can automatically update the list of plugins that you have installed with a single command.

```sh
bash ibmcloud_cli/update_plugin.sh
```

## List of programming languages, tools, and open source softwares

Here you can find the list of all programming languages, tools, and open source softwares to be installed.

### General

- git
- go
- glide
- dep
- node
- yarn
- python
- cocoapods
- carthage
- kitura
- imagemagick
- tesseract
- opencv
- cacli
- mongodb
- mysql
- postgresql
- docker
- docker-compose
- kubernetes-cli
- openshift-cli
- helm
- travis
- drone-cli
- circleci
- terraform
- wget
- youtube-dl
- serverless
- wsk
- cf
- ibmcloud
  - cloud-foundry
  - cloud-functions
  - cloud-databases
  - cloud-object-storage
  - container-registry
  - kubernetes-service
  - vpc-infrastructure
  - cloud-internet-services
  - schematics
  - observe-service
  - watson
  - code-engine
  - monitoring
  - logging
- nvm
- oh-my-zsh

### Node.js libraries and frameworks

- nodemon
- @angular/cli
- create-react-app
- gatsby-cli
- pm2

## LICENSE

MIT License

Copyright (c) 2021 Victor Shinya
