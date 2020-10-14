# Project Name

> SDC | partialtable | reviews-component

## Table of Contents

1. CRUD/API Schema
2. Data Schema SQL
3. Data Schema noSQL

## CRUD/API Usage

> How to use the API

### READ [ GET ]

Endpoint To Get Specific Review
> GET ::: api/:{restaurant_id}/reviews/:{review_id}

Endpoint To get All Reviews for a given restaurant
> GET ::: api/:{restaurant_id}/reviews/

Endpoint To Get All Resturant's
> GET ::: api/restaurant/

Endpoint To Get Specific Resturant Data
> GET ::: api/restaurant/:{restaurant_id}

Endpoint To Get All User Information
> GET ::: api/users/

Endpoint To Get Specific User Information
> GET ::: api/users/:{user_id}

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