# README

[![Build Status](https://travis-ci.org/octangroup/sneakers-api.svg?branch=ch%2Fdocs)](https://travis-ci.org/octangroup/sneakers-api)

## Sneakers-Api

This is an api thats retrieves data from Mongo-db Atlas and display data in json format. It is done with Ruby on Rails.

## Requirements

- Ruby 2.7.0 or newer
- Rails
- Mongodb or Mongo Atlas
- all ruby dependencies are described in the Gemfile (please refer to the changelog of this file to check for updates)

## Installation

1) Install the bundle

    bundle install

2) Setup your database

     config/mongoid.yml

## Usage

Run the server

```bash
rails server
```

Open [http://localhost:3000](http://localhost:3000)

## Endpoints

Endpoints for viewing data and creating them.

- [Show All sneakers](sneaker/get.md) : `GET /sneaker/`
- [Create sneaker](sneaker/post.md) : `POST /sneaker/`
- [Show a sneaker](sneaker/slug/get.md) : `GET /sneaker/:slug/`
