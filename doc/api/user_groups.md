
# macauth userGroups API


## GET /userGroups
Returns an array of user_groups.


### Example

#### Request
```
GET /user_groups HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: W/"807c2918fc92fd9cd75552b0beb61480"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5b52165e-7e66-4e51-93b2-6cca5150d5d8
X-Runtime: 0.004749
X-XSS-Protection: 1; mode=block

{
  "user_groups": [
    {
      "id": "UG1",
      "created_at": "2016-01-13T07:35:25.000Z",
      "updated_at": "2016-01-13T07:35:25.000Z"
    },
    {
      "id": "UG2",
      "created_at": "2016-01-13T07:35:25.000Z",
      "updated_at": "2016-01-13T07:35:25.000Z"
    }
  ]
}
```



## GET /userGroups/:id
Returns user_group information hash.


### Example

#### Request
```
GET /user_groups/UG1 HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 92
Content-Type: application/json; charset=utf-8
ETag: W/"0c538cb2752c97bad06c7c98c9995b45"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b9e4ebe3-41c0-4e47-af56-ee84a587e69f
X-Runtime: 0.003176
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2016-01-13T07:35:25.000Z",
  "updated_at": "2016-01-13T07:35:25.000Z"
}
```



## POST /userGroups
Creates a new user_group and return 201 created.


### Example

#### Request
```
POST /user_groups HTTP/1.1
Accept: application/json
Content-Length: 56
Content-Type: application/json
Host: www.example.com

{
  "user_groups": [
    {
      "id": "UG1"
    },
    {
      "id": "UG2"
    },
    {
      "id": "UG3"
    }
  ]
}
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 27
Content-Type: application/json; charset=utf-8
ETag: W/"12eb7eef34945461029447e2efac2944"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f50c19c-15b3-4c7b-9ecf-a77b829322ef
X-Runtime: 0.007591
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```



## DELETE /userGroups/:id
Deletes a target resource and returns 204 no content.


### Example

#### Request
```
DELETE /user_groups/UG1 HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 78ad07c4-44af-4539-a166-d6eabcf729df
X-Runtime: 0.004585
X-XSS-Protection: 1; mode=block
```




## PATCH /userGroups/:id
Updates a target resource and returns 204 no content.


### Example

#### Request
```
PATCH /user_groups/UG1 HTTP/1.1
Accept: application/json
Content-Length: 29
Content-Type: application/json
Host: www.example.com

{
  "user_group": [
    {
      "id": "UG1"
    }
  ]
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4dee5ca6-ff43-49a4-bdfb-9028a240c46e
X-Runtime: 0.005613
X-XSS-Protection: 1; mode=block
```
