# Project Name

> SDC | partialtable | reviews-component

## Table of Contents

1. CRUD/API Schema
2. Data Schema SQL
3. Data Schema noSQL

## CRUD/API Usage

> How to use the API

### READ [ GET ]

### Get A Specific Review
  * GET `api/restaurant/:{restaurant_id}/reviews/:{review_id}

**Path Parameters:**
  * `restaurant_id` | Restaurant ID
  * `review_id` | Review ID

**Success Status Code:** `200`

**Returns:** JSON
```json
    {
      "restaurant_id" : "Integer",
      "user_id" : "Integer",
      "review_id" : "Integer",
      "create_date" : "Date(UTC)",
      "description" : "String",
      "rating_food" : "Integer",
      "rating_service" : "Integer",
      "rating_ambience" : "Integer",
      "rating_overall" : "Integer",
      "noise_level" : "String",
      "would_recommend" : "Bool",
    }
```

### Get All Reviews for a specific restaurant
  * GET `api/restaurant/:{restaurant_id}/reviews/

**Path Parameters:**
  * `restaurant_id` | Restaurant ID

**Success Status Code:** `200`

**Returns:** JSON X Num Of Reviews
```json
    [
      {
        "restaurant_id" : "Integer",
        "user_id" : "Integer",
        "review_id" : "Integer",
        "create_date" : "Date(UTC)",
        "description" : "String",
        "rating_food" : "Integer",
        "rating_service" : "Integer",
        "rating_ambience" : "Integer",
        "rating_overall" : "Integer",
        "noise_level" : "String",
        "would_recommend" : "Bool",
      },
      {
        "restaurant_id" : "Integer",
        "user_id" : "Integer",
        "review_id" : "Integer",
        "create_date" : "Date(UTC)",
        "description" : "String",
        "rating_food" : "Integer",
        "rating_service" : "Integer",
        "rating_ambience" : "Integer",
        "rating_overall" : "Integer",
        "noise_level" : "String",
        "would_recommend" : "Bool",
      }
    ]
```

### Get A Specific Resturant's Data
  * GET `api/restaurant/:{restaurant_id}

**Path Parameters:**
  * `restaurant_id` | Restaurant ID

**Success Status Code:** `200`

**Returns:** JSON
```json
    {
      "restaurant_name" : "String",
      "number_of_reviews" : "Integer",
      "food_overall_rating" : "Integer",
      "service_overall_rating" : "Integer",
      "ambiance_overall_rating" : "Integer",
      "overall_rating" : "Integer",
      "noise_level" : "String",
      "one_star_percent" : "Integer",
      "two_star_percent" : "Integer",
      "three_star_percent" : "Integer",
      "four_star_percent" : "Integer",
      "five_star_percent" : "Integer",
      "loved_for" : [
        "most_booked",
        "great_for_dinner",
        "great_for_lunch",
        "great_for_breakfast"
      ],
      "filters" : [
        "open_early",
        "open_late",
        "good_for_singles",
        "bar_seating"
      ]
    }
```

### Get All Resturant Data
  * GET `api/restaurant/

**Path Parameters:**
  * N/A

**Success Status Code:** `200`

**Returns:** JSON (X Num of resturants)
```json
    [
      {
        "restaurant_name" : "String",
        "number_of_reviews" : "Integer",
        "food_overall_rating" : "Integer",
        "service_overall_rating" : "Integer",
        "ambiance_overall_rating" : "Integer",
        "overall_rating" : "Integer",
        "noise_level" : "String",
        "one_star_percent" : "Integer",
        "two_star_percent" : "Integer",
        "three_star_percent" : "Integer",
        "four_star_percent" : "Integer",
        "five_star_percent" : "Integer",
        "loved_for" : [
          "most_booked",
          "great_for_dinner",
          "great_for_lunch",
          "great_for_breakfast"
        ],
        "filters" : [
          "open_early",
          "open_late",
          "good_for_singles",
          "bar_seating"
        ]
      },
      {
        "restaurant_name" : "String",
        "number_of_reviews" : "Integer",
        "food_overall_rating" : "Integer",
        "service_overall_rating" : "Integer",
        "ambiance_overall_rating" : "Integer",
        "overall_rating" : "Integer",
        "noise_level" : "String",
        "one_star_percent" : "Integer",
        "two_star_percent" : "Integer",
        "three_star_percent" : "Integer",
        "four_star_percent" : "Integer",
        "five_star_percent" : "Integer",
        "loved_for" : [
          "most_booked",
          "great_for_dinner",
          "great_for_lunch",
          "great_for_breakfast"
        ],
        "filters" : [
          "open_early",
          "open_late",
          "good_for_singles",
          "bar_seating"
        ]
      }
    ]
```
### Get A Specific User's Data
  * GET `api/users/:{user_id}

**Path Parameters:**
  * `user_id` | User's ID

**Success Status Code:** `200`

**Returns:** JSON
```json
    {
      "first_name" : "String",
      "last_name" : "String",
      "location" : "String",
      "avatar" : "String"
    }
```

### Get All User's Data
  * GET `api/users/

**Path Parameters:**
  * N/A

**Success Status Code:** `200`

**Returns:** JSON
```json
    [
      {
        "first_name" : "String",
        "last_name" : "String",
        "location" : "String",
        "avatar" : "String"
      },
      {
        "first_name" : "String",
        "last_name" : "String",
        "location" : "String",
        "avatar" : "String"
      }
    ]
```

### CREATE [ POST ]

Endpoint To Create Specific Review
> POST ::: api/:{restaurant_id}/reviews/

Endpoint To Create A Resturant
> POST ::: api/restaurant/

Enpoint to Create A User
> POST ::: api/users/


### UPDATE [ PUT ]

Endpoint To Update Specific Review
> PUT ::: api/:{restaurant_id}/reviews/:{review_id}

Endpoint To Update Specific Resturant Data
> PUT ::: api/restaurant/:{restaurant_id}

Endpoint To Update A Users Information
> PUT ::: api/users/:{user_id}

### DELETE [ DELTE ]

Endpoint To Delete a Specific Review
> DELETE ::: api/:{restaurant_id}/reviews/:{review_id}

Endpoint To Delete Specific Resturant Data
> DELETE ::: api/restaurant/:{restaurant_id}

Endpoint To Delete a Specific Users Information
> DELETE ::: api/users/:{user_id}

[ TODO - - - ADD RESPONSE DATA ]

### Postgres Schema
> https://drive.google.com/file/d/1W4pYr576JnZ1fGnHb-Epy5nHb9AEFzoV/view?usp=sharing

**Returns:** JSON
```json
    {
      "restaurant_name" : "String",
      "number_of_reviews" : "Integer",
      "food_overall_rating" : "Integer",
      "service_overall_rating" : "Integer",
      "ambiance_overall_rating" : "Integer",
      "overall_rating" : "Integer",
      "noise_level" : "String",
      "one_star_percent" : "Integer",
      "two_star_percent" : "Integer",
      "three_star_percent" : "Integer",
      "four_star_percent" : "Integer",
      "five_star_percent" : "Integer",
      "loved_for" : [
        "most_booked",
        "great_for_dinner",
        "great_for_lunch",
        "great_for_breakfast"
      ],
      "filters" : [
        "open_early",
        "open_late",
        "good_for_singles",
        "bar_seating"
      ]
    }
```