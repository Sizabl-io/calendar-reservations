## Related Projects
  -
  -
  -

# Server API

### Get Restaurant Availability

Gets availability for a restaurant

`GET /api/restaurant/:restaurantId/availability`

**Path Parameters**

`restaurantId` restaurant id

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

`POST /api/restaurant/:restaurantId/availability`

**Path Parameters**

`restaurantId` restaurant id

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

`PATCH /api/:restaurantId/availability/:reservationId`

**Path Parameters**

`reservationId` reservation id,
`restaurantId` restaurant id

**Success Status Code:** 204

**Request Body:** Expects JSON with following keys (only include keys to be updated)

``` json
[{
    "reservationDate": "String",
    "reservationTimes": "String",
    "numberOfPeople": "Number",
    "firstName": "String",
    "lastName": "String",
    "email": "String",
    "phoneNumber": "String",
    "notes": "String",
  }]
```

### Delete Reservation

Deletes reservation

`DELETE /api/:restaurantId/availability/:reservationId`

**Path Parameters**

`reservationId` reservation id,
`restaurantId` restaurant id

**Success Status Code:** 204



