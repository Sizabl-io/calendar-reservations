# Project Name

# Server API

### Get Calendar Info

Gets all information about availability for all restaurants

`GET /api/calendar`

**Success Status Code:** `200`

**Returns:** JSON

``` json
[{
    "reservationDate": "String",
    "reservationMonth": "String",
    "reservationDay": "String",
    "reservationTimes": "String",
    "currentYear": "Number",
    "available": "Boolean",
    "people": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
    "openingTime": "Number",
    "closingTime": "Number"
  }]
```

### Post Calendar Info

Adds reservation availability for a new restraurant in the database

`POST /api/calendar`

**Success Status Code:** 201

**Request Body:** Expects JSON with following keys:

``` json
[{
    "reservationDate": "String",
    "reservationMonth": "String",
    "reservationDay": "String",
    "reservationTimes": "String",
    "currentYear": "Number",
    "available": "Boolean",
    "people": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
    "openingTime": "Number",
    "closingTime": "Number"
  }]
```

### Update Calendar Info

Updates availability in calendar for particular restaurant

`PATCH /api/calendar/:id`

**Path Parameters**

`id` restaurant id

**Success Status Code:** 204

**Request Body:** Expects JSON with following keys (only include kets to be updated)

``` json
[{
    "reservationDate": "String",
    "reservationMonth": "String",
    "reservationDay": "String",
    "reservationTimes": "String",
    "currentYear": "Number",
    "available": "Boolean",
    "people": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
    "openingTime": "Number",
    "closingTime": "Number"
  }]
```

### Delete Restaurant

Deletes reservation availability for a restaurant

`DELETE /api/calendar/:id`

**Path Parameters**

`id` restaurant id

**Success Status Code:** 204

## Related Projects

  - https://github.com/teamName/repo
  - https://github.com/teamName/repo
  - https://github.com/teamName/repo
  - https://github.com/teamName/repo

## Table of Contents

1. [Usage](#Usage)
1. [Requirements](#requirements)
1. [Development](#development)

## Usage

> Some usage instructions

## Requirements

An `nvmrc` file is included if using [nvm](https://github.com/creationix/nvm).

- Node 6.13.0
- etc

## Development

### Installing Dependencies

From within the root directory:

```sh
npm install -g webpack
npm install
```

