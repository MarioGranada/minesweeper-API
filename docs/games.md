[Back](../README.md)

Games
======

URLs
----

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /users/:id/games
*HTTP Method*           | GET
*Response Format*       | JSON

Query parameters
-----------------

| Name          | Required | Description     |
|---------------|----------|-----------------|
| id            | Yes      | User Id         |

Response body
--------------

| Element                   | Required | Default   | Supported Values | Type    | Description                            |
|---------------------------|----------|-----------|------------------|---------|----------------------------------------|
| games                     | Yes      |           |                  | Object  | List of games                          |
| games[]._id               | Yes      |           |                  | Object  | Mongodb generated Id Object            |
| games[].created_at        | No       |           |                  | String  | Date when game record was created      |
| games[].updated_at        | No       |           |                  | String  | Last date when game record was updated |
| games[].cells             | Yes      |           |                  | Object  | List of cells for the given game       |
| games[].cols              | Yes      |           |                  | Number  | Game board columns                     |
| games[].grid_status       | Yes      | 'IN_GAME' | 'OVER', 'IN_GAME', 'FINISHED' | String  | Game Board Current Status |
| games[].mines_positions   | Yes      |           |                  | Array   | Array with random cells indexes        |
| games[].mines_total       | Yes      |           |                  | Number  | Game board total of mines              |
| games[].rows              | Yes      |           |                  | Number  | Game board rows                        |
| games[].time              | Yes      |           |                  | Number  | Game board spent time in game          |
| games[].user_id           | Yes      |           |                  | Object  | Game user Mongodb Id Object            |


### Request Example

```GET /users/5a399f11d7b2f10658784c1c/games```

### Response body example

```
[
    {
        "_id": {
            "$oid": "5a39b145d7b2f10658784c1d"
        },
        "cells": [
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            }
        ],
        "cols": 5,
        "created_at": "2017-12-20T00:39:33.309Z",
        "grid_status": "IN_GAME",
        "mines_positions": [
            13,
            8,
            7,
            9
        ],
        "mines_total": 4,
        "rows": 5,
        "time": 0,
        "updated_at": "2017-12-20T00:39:33.309Z",
        "user_id": {
            "$oid": "5a399f11d7b2f10658784c1c"
        }
    },
    {
        "_id": {
            "$oid": "5a39b154d7b2f10658784c1e"
        },
        "cells": [
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            },
            {
                "cell_status": "COVERED"
            }
        ],
        "cols": 10,
        "created_at": "2017-12-20T00:39:48.410Z",
        "grid_status": "IN_GAME",
        "mines_positions": [
            7,
            25,
            3,
            11,
            46,
            30,
            36,
            16,
            20,
            35,
            44,
            0,
            29,
            15,
            37,
            19,
            40,
            42,
            48,
            49
        ],
        "mines_total": 20,
        "rows": 5,
        "time": 0,
        "updated_at": "2017-12-20T00:39:48.410Z",
        "user_id": {
            "$oid": "5a399f11d7b2f10658784c1c"
        }
    }
]

```

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /games/:id
*HTTP Method*           | GET
*Response Format*       | JSON

Query parameters
-----------------

| Name          | Required | Description     |
|---------------|----------|-----------------|
| id            | Yes      | Game Id         |

Response body
--------------

| Element                | Required | Default   | Supported Values | Type    | Description                            |
|------------------------|----------|-----------|------------------|---------|----------------------------------------|
| game._id               | Yes      |           |                  | Object  | Mongodb generated Id Object            |
| game.created_at        | No       |           |                  | String  | Date when game record was created      |
| game.updated_at        | No       |           |                  | String  | Last date when game record was updated |
| game.cells             | Yes      |           |                  | Object  | List of cells for the given game       |
| game.cols              | Yes      |           |                  | Number  | Game board columns                     |
| game.grid_status       | Yes      | 'IN_GAME' | 'OVER', 'IN_GAME', 'FINISHED' | String  | Game Board Current Status |
| game.mines_positions   | Yes      |           |                  | Array   | Array with random cells indexes        |
| game.mines_total       | Yes      |           |                  | Number  | Game board total of mines              |
| game.rows              | Yes      |           |                  | Number  | Game board rows                        |
| game.time              | Yes      |           |                  | Number  | Game board spent time in game          |
| game.user_id           | Yes      |           |                  | Object  | Game user Mongodb Id Object            |


### Request Example
``` GET /games/5a39b154d7b2f10658784c1e```

### Response body

```
{{
    "_id": {
        "$oid": "5a39b154d7b2f10658784c1e"
    },
    "cells": [
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        }
    ],
    "cols": 10,
    "created_at": "2017-12-20T00:39:48.410Z",
    "grid_status": "IN_GAME",
    "mines_positions": [
        7,
        25,
        3,
        11,
        46,
        30,
        36,
        16,
        20,
        35,
        44,
        0,
        29,
        15,
        37,
        19,
        40,
        42,
        48,
        49
    ],
    "mines_total": 20,
    "rows": 5,
    "time": 0,
    "updated_at": "2017-12-20T00:39:48.410Z",
    "user_id": {
        "$oid": "5a399f11d7b2f10658784c1c"
    }
}

```

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /users/:id/games/
*HTTP Method*           | POST
*Response Format*       | JSON

Query parameters
-----------------

| Name          | Required | Description           |
|---------------|----------|-----------------------|
| id            | Yes      | User Id               |
| rows          | Yes      | Number of rows        |
| cols          | Yes      | Number of columns     |
| mines_total   | Yes      | Total number of mines |


Response body
--------------

| Element                | Required | Default   | Supported Values | Type    | Description                            |
|------------------------|----------|-----------|------------------|---------|----------------------------------------|
| game._id               | Yes      |           |                  | Object  | Mongodb generated Id Object            |
| game.created_at        | No       |           |                  | String  | Date when game record was created      |
| game.updated_at        | No       |           |                  | String  | Last date when game record was updated |
| game.cells             | Yes      |           |                  | Object  | List of cells for the given game       |
| game.cols              | Yes      |           |                  | Number  | Game board columns                     |
| game.grid_status       | Yes      | 'IN_GAME' | 'OVER', 'IN_GAME', 'FINISHED' | String  | Game Board Current Status |
| game.mines_positions   | Yes      |           |                  | Array   | Array with random cells indexes        |
| game.mines_total       | Yes      |           |                  | Number  | Game board total of mines              |
| game.rows              | Yes      |           |                  | Number  | Game board rows                        |
| game.time              | Yes      |           |                  | Number  | Game board spent time in game          |
| game.user_id           | Yes      |           |                  | Object  | Game user Mongodb Id Object            |


### Request Example
``` POST /users/5a399f11d7b2f10658784c1c/games?rows=5&cols10&mines_total=20 ```

### Response body

```
{{
    "_id": {
        "$oid": "5a39f400d7b2f10658784c20"
    },
    "cells": [
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        }
    ],
    "cols": 10,
    "created_at": "2017-12-20T05:24:16.972Z",
    "grid_status": "IN_GAME",
    "mines_positions": [
        20,
        37,
        31,
        38,
        14,
        29,
        3,
        28,
        0,
        23,
        6,
        19,
        40,
        21,
        18,
        2,
        43,
        46,
        7,
        39
    ],
    "mines_total": 20,
    "rows": 5,
    "time": 0,
    "updated_at": "2017-12-20T05:24:16.972Z",
    "user_id": {
        "$oid": "5a399f11d7b2f10658784c1c"
    }
}

```

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /games/:id
*HTTP Method*           | PATCH, PUT 
*Response Format*       | JSON

Query parameters
-----------------

| Name            | Required |  Description                            |
|-----------------|----------|-----------------------------------------|
| time            | No      | Miliseconds spend in game on a given time |

Response body
--------------
N/A


### Request Example
``` PUT /games/5a39f400d7b2f10658784c20?time=3000```

### Response body

```N/A```

Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /games/:id/update_single_cell
*HTTP Method*           | POST
*Response Format*       | JSON

Query parameters
-----------------

| Name                 | Required | Description                                      |
|----------------------|----------|--------------------------------------------------|
| id                   | Yes      | Game Id                                          |
| array_cell_position  | Yes      | Index of the current cell in game cells array |
| cell_status          | Yes      | Current cell status                              |
| time                 | Yes      | Miliseconds spend in game on a given time        |


Response body
--------------

| Element                | Required | Default   | Supported Values | Type    | Description                            |
|------------------------|----------|-----------|------------------|---------|----------------------------------------|
| game._id               | Yes      |           |                  | Object  | Mongodb generated Id Object            |
| game.created_at        | No       |           |                  | String  | Date when game record was created      |
| game.updated_at        | No       |           |                  | String  | Last date when game record was updated |
| game.cells             | Yes      |           |                  | Object  | List of cells for the given game       |
| game.cols              | Yes      |           |                  | Number  | Game board columns                     |
| game.grid_status       | Yes      | 'IN_GAME' | 'OVER', 'IN_GAME', 'FINISHED' | String  | Game Board Current Status |
| game.mines_positions   | Yes      |           |                  | Array   | Array with random cells indexes        |
| game.mines_total       | Yes      |           |                  | Number  | Game board total of mines              |
| game.rows              | Yes      |           |                  | Number  | Game board rows                        |
| game.time              | Yes      |           |                  | Number  | Game board spent time in game          |
| game.user_id           | Yes      |           |                  | Object  | Game user Mongodb Id Object            |

### Request Example
``` POST /games/5a39f400d7b2f10658784c20/update_single_cell?array_cell_position=20&cell_status='RED_FLAG&time=3000```

### Response body

```
{
    "_id": {
        "$oid": "5a39f400d7b2f10658784c20"
    },
    "cells": [
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "RED_FLAG"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        }
    ],
    "cols": 10,
    "created_at": "2017-12-20T05:24:16.972Z",
    "grid_status": "IN_GAME",
    "mines_positions": [
        20,
        37,
        31,
        38,
        14,
        29,
        3,
        28,
        0,
        23,
        6,
        19,
        40,
        21,
        18,
        2,
        43,
        46,
        7,
        39
    ],
    "mines_total": 20,
    "rows": 5,
    "time": 3000,
    "updated_at": "2017-12-20T05:38:42.644Z",
    "user_id": {
        "$oid": "5a399f11d7b2f10658784c1c"
    }
}
```
Key                     | Value
------------------------|----------------------------------------------
*Relative Path*         | /games/:id/update_cells_group
*HTTP Method*           | POST
*Response Format*       | JSON

Query parameters
-----------------

| Name                 | Required | Description                                      |
|----------------------|----------|--------------------------------------------------|
| id                   | Yes      | Game Id                                          |
| positions_array      | Yes      | List of indexes to update in game cells array    |
| time                 | Yes      | Miliseconds spend in game on a given time        |


Response body
--------------

| Element                | Required | Default   | Supported Values | Type    | Description                            |
|------------------------|----------|-----------|------------------|---------|----------------------------------------|
| game._id               | Yes      |           |                  | Object  | Mongodb generated Id Object            |
| game.created_at        | No       |           |                  | String  | Date when game record was created      |
| game.updated_at        | No       |           |                  | String  | Last date when game record was updated |
| game.cells             | Yes      |           |                  | Object  | List of cells for the given game       |
| game.cols              | Yes      |           |                  | Number  | Game board columns                     |
| game.grid_status       | Yes      | 'IN_GAME' | 'OVER', 'IN_GAME', 'FINISHED' | String  | Game Board Current Status |
| game.mines_positions   | Yes      |           |                  | Array   | Array with random cells indexes        |
| game.mines_total       | Yes      |           |                  | Number  | Game board total of mines              |
| game.rows              | Yes      |           |                  | Number  | Game board rows                        |
| game.time              | Yes      |           |                  | Number  | Game board spent time in game          |
| game.user_id           | Yes      |           |                  | Object  | Game user Mongodb Id Object            |

### Request Example
``` POST /games/5a39f400d7b2f10658784c20/update_cells_group?positions_array=8,18,19&time=6000```

### Response body

```
{
    "_id": {
        "$oid": "5a39f400d7b2f10658784c20"
    },
    "cells": [
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "UNCOVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "RED_FLAG"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        },
        {
            "cell_status": "COVERED"
        }
    ],
    "cols": 10,
    "created_at": "2017-12-20T05:24:16.972Z",
    "grid_status": "IN_GAME",
    "mines_positions": [
        20,
        37,
        31,
        38,
        14,
        29,
        3,
        28,
        0,
        23,
        6,
        19,
        40,
        21,
        18,
        2,
        43,
        46,
        7,
        39
    ],
    "mines_total": 20,
    "rows": 5,
    "time": 6000,
    "updated_at": "2017-12-20T05:47:41.938Z",
    "user_id": {
        "$oid": "5a399f11d7b2f10658784c1c"
    }
}
```

**Author:** Mario Granada
