## Related Projects
  -
  -
  -

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



