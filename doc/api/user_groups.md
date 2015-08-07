
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
Content-Length: 187
Content-Type: application/json; charset=utf-8
ETag: W/"fc0b456168dfe48e0213fd051235f230"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7a4dcab1-8789-4da7-836b-d33163df68f7
X-Runtime: 0.008830
X-XSS-Protection: 1; mode=block

[
  {
    "id": "UG1",
    "created_at": "2015-08-07T00:37:31.000Z",
    "updated_at": "2015-08-07T00:37:31.000Z"
  },
  {
    "id": "UG2",
    "created_at": "2015-08-07T00:37:31.000Z",
    "updated_at": "2015-08-07T00:37:31.000Z"
  }
]
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
ETag: W/"55a332a424d6c1c8734773c40986c2b1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 31be2d4f-3afc-4e57-8cdb-70cb5c264ac4
X-Runtime: 0.003502
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2015-08-07T00:37:31.000Z",
  "updated_at": "2015-08-07T00:37:31.000Z"
}
```




## POST /userGroups
Creates a new user_group and return 201 created.


### Example

#### Request
```
POST /user_groups HTTP/1.1
Accept: application/json
Content-Length: 55
Content-Type: application/json
Host: www.example.com

{
  "user_group": [
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
X-Request-Id: d15bcb07-03d2-4c8f-8f79-f66c381f07a8
X-Runtime: 0.009668
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
X-Request-Id: f2af1f16-35d4-47a6-b9ff-52d19e169396
X-Runtime: 0.004957
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
X-Request-Id: 0e982a9e-e640-4a62-a6c7-ae2c725cfadf
X-Runtime: 0.006453
X-XSS-Protection: 1; mode=block
```
