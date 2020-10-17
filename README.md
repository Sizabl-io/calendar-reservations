## Related Projects
  -
  -
  -

# Server API

### Get Restaurant Availability

Gets availability for a restaurant

`GET /api/:restaurantId/availability`

**Path Parameters**

`id` restaurant id

**Success Status Code:** `200`

**Returns:** JSON

``` json
[{
    "reservationDate": "String",
    "reservationTime": "String",
    "numberOfPeople": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
    "openingTime": "Number",
    "closingTime": "Number"
  }]
```

### Post Reservation

Creates new reservation for a restaurant

`POST /api/:restaurantId/availability`

**Success Status Code:** 201

**Request Body:** Expects JSON with following keys:

``` json
[{
    "reservationDate": "String",
    "reservationTime": "String",
    "numberOfPeople": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
  }]
```

### Update Reservation

Updates availability in calendar for particular restaurant

`PATCH /api/:restaurantId/availability/:revervationId`

**Path Parameters**

`reservationId` reservation id

**Success Status Code:** 204

**Request Body:** Expects JSON with following keys (only include keys to be updated)

``` json
[{
    "reservationDate": "String",
    "reservationTimes": "String",
    "numberOfPeople": "Number or String",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
  }]
```

### Delete Reservation

Deletes reservation

`DELETE /api/:restaurantId/availability/:revervationId`

**Path Parameters**

`reservationId` reservation id

**Success Status Code:** 204



