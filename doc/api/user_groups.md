
# Mackun2 userGroups API


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
ETag: W/"a2b7f229efb2c6b60a630d91942602a4"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8e8d8c4f-e51f-441f-b581-3a5e7bc590c4
X-Runtime: 0.006427
X-XSS-Protection: 1; mode=block

{
  "user_groups": [
    {
      "id": "UG1",
      "created_at": "2015-10-10T03:17:18.000Z",
      "updated_at": "2015-10-10T03:17:18.000Z"
    },
    {
      "id": "UG2",
      "created_at": "2015-10-10T03:17:18.000Z",
      "updated_at": "2015-10-10T03:17:18.000Z"
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
ETag: W/"7287b7f0a597b0b74cd1864ff19d30c3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d4e0a267-97c6-4ecf-aa8f-aca95121f735
X-Runtime: 0.003378
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2015-10-10T03:17:18.000Z",
  "updated_at": "2015-10-10T03:17:18.000Z"
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 662b8197-a01e-45fc-9313-b10c8f9f0ec2
X-Runtime: 0.010088
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 664aefb2-9935-4381-9619-efd02b85d7a4
X-Runtime: 0.003935
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8fbc922a-e328-4091-801e-bae0d26f161c
X-Runtime: 0.006511
X-XSS-Protection: 1; mode=block
```
