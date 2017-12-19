[Back](../README)

Users
======

URLs
----

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /users
*HTTP Method*           | GET
*Response Format*       | JSON

Response body
--------------

| Element            | Required | Type    | Description                            |
|--------------------|----------|---------|----------------------------------------|
| users              | Yes      | Object  | List of users                          |
| users[]._id        | Yes      | Object  | Mongodb generated Id Object            |
| usesr[].created_at | No       | String  | Date when user record was created      |
| usesr[].email      | Yes      | String  | User email                             |
| usesr[].name       | Yes      | String  | User name                              |
| usesr[].password   | No       | String  | User password                          |
| usesr[].updated_at | No       | String  | Last date when user record was updated |


### Request Example

```GET /users```

### Response body example

```
[
    {
        "_id": {
            "$oid": "5a1b30acd7b2f10b5e9fe67e"
        },
        "created_at": "2017-11-26T21:22:52.135Z",
        "email": "mandres190@hotmail.com",
        "name": "mario",
        "password": "12345",
        "updated_at": "2017-11-26T21:22:52.135Z"
    },
    {
        "_id": {
            "$oid": "5a1ddc21d7b2f1283f5cb234"
        },
        "created_at": "2017-11-28T21:59:00.141Z",
        "email": "mario@here.com",
        "name": "new user",
        "password": "1234",
        "updated_at": "2017-11-28T21:59:00.141Z"
    },
    {
        "_id": {
            "$oid": "5a1ddc3ed7b2f1283f5cb235"
        },
        "created_at": "2017-11-28T21:59:27.976Z",
        "email": "mario2@here.com",
        "name": "new user2",
        "password": "12342",
        "updated_at": "2017-11-28T21:59:27.976Z"
    },
    {
        "_id": {
            "$oid": "5a2ab09cd7b2f1065da55e8e"
        },
        "created_at": "2017-12-08T15:32:44.227Z",
        "email": "mario@hereagain.com",
        "name": "mario5",
        "password": "1234",
        "updated_at": "2017-12-08T15:32:44.227Z"
    },
    {
        "_id": {
            "$oid": "5a3416cad7b2f105db8a1d13"
        },
        "created_at": "2017-12-15T18:39:06.067Z",
        "email": "mariocss@here.com",
        "name": "mariocss",
        "password": "1234",
        "updated_at": "2017-12-15T18:39:06.067Z"
    },
    {
        "_id": {
            "$oid": "5a341796d7b2f105db8a1d14"
        },
        "created_at": "2017-12-15T18:42:30.318Z",
        "email": "mariocss2@here.com",
        "name": "mariocss2",
        "password": "1234",
        "updated_at": "2017-12-15T18:42:30.318Z"
    },
    {
        "_id": {
            "$oid": "5a3417b7d7b2f105db8a1d15"
        },
        "created_at": "2017-12-15T18:43:03.763Z",
        "email": "mariocss3@here.com",
        "name": "mariocss3",
        "password": "1234",
        "updated_at": "2017-12-15T18:43:03.763Z"
    },
    {
        "_id": {
            "$oid": "5a3417ddd7b2f105db8a1d16"
        },
        "created_at": "2017-12-15T18:43:41.044Z",
        "email": "mariocss4@here.com",
        "name": "mariocss4",
        "password": "1234",
        "updated_at": "2017-12-15T18:43:41.044Z"
    },
    {
        "_id": {
            "$oid": "5a37f07dd7b2f105ec810660"
        },
        "created_at": "2017-12-18T16:44:45.108Z",
        "email": "mandres1@hotmail.com",
        "name": "mario andres",
        "password": "12345",
        "updated_at": "2017-12-18T16:44:45.108Z"
    },
    {
        "_id": {
            "$oid": "5a383dc3d7b2f1049fc187b2"
        },
        "created_at": "2017-12-18T22:14:27.345Z",
        "email": "mario10@here.com",
        "name": "mariocss10",
        "password": "23456",
        "updated_at": "2017-12-18T22:14:27.345Z"
    },
    {
        "_id": {
            "$oid": "5a3849b5d7b2f1049fc187b8"
        },
        "created_at": "2017-12-18T23:05:25.377Z",
        "email": "mariot@here.com",
        "name": "mario t",
        "password": "12345",
        "updated_at": "2017-12-18T23:05:25.377Z"
    },
    {
        "_id": {
            "$oid": "5a396957d7b2f10658784c11"
        },
        "created_at": "2017-12-19T19:32:39.371Z",
        "email": "mariov@here.com",
        "name": "mario v",
        "password": "12345",
        "updated_at": "2017-12-19T19:32:39.371Z"
    },
    {
        "_id": {
            "$oid": "5a396a02d7b2f10658784c13"
        },
        "created_at": "2017-12-19T19:35:30.307Z",
        "email": "mariov2@here.com",
        "name": "mariov2",
        "password": "sdfasf",
        "updated_at": "2017-12-19T19:35:30.307Z"
    },
    {
        "_id": {
            "$oid": "5a3975acd7b2f10658784c17"
        },
        "created_at": "2017-12-19T20:25:16.650Z",
        "email": "mariotagain@here.com",
        "name": "mariotagain",
        "password": "12345",
        "updated_at": "2017-12-19T20:25:16.650Z"
    }
]

```

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /users
*HTTP Method*           | POST
*Response Format*       | JSON

Query parameters
-----------------

| Name            | Required |  Description                        |
|-----------------|----------|-------------------------------------|
| name            | Yes      | Name of the new user                |
| email           | Yes      | Email of the new user               |
| password        | Yes      | Password of the new user            |

Response body
--------------

| Element            | Required | Type    | Description                            |
|--------------------|----------|---------|----------------------------------------|
| users[]._id        | Yes      | Object  | Mongodb generated Id Object            |
| usesr[].created_at | No       | String  | Date when user record was created      |
| usesr[].email      | Yes      | String  | User email                             |
| usesr[].name       | Yes      | String  | User name                              |
| usesr[].password   | No       | String  | User password                          |
| usesr[].updated_at | No       | String  | Last date when user record was updated |


### Request Example
``` POST /users?name=MarioG&email='mario.granada190@gmail.com'&password='1234' ```

### Response body

```
{
    "_id": {
        "$oid": "5a399f11d7b2f10658784c1c"
    },
    "created_at": "2017-12-19T23:21:53.357Z",
    "email": "mario.granada190@gmail.com",
    "name": "MarioG",
    "password": "1234",
    "updated_at": "2017-12-19T23:21:53.357Z"
}


```

**Author:** Mario Granada