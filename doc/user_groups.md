## GET /userGroups
Returns an array of user_groups.

### Example

#### Request
```
GET /user_groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 187
Content-Type: application/json; charset=utf-8
ETag: W/"419a8859d0fef020febb0f2ab472af68"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 56698b86-0344-4b90-9303-196375e57222
X-Runtime: 0.007488
X-XSS-Protection: 1; mode=block

[
  {
    "id": "UG1",
    "created_at": "2015-08-06T00:18:41.000Z",
    "updated_at": "2015-08-06T00:18:41.000Z"
  },
  {
    "id": "UG2",
    "created_at": "2015-08-06T00:18:41.000Z",
    "updated_at": "2015-08-06T00:18:41.000Z"
  }
]
```

## GET /userGroups/:id
Returns user_group information hash.

### Example

#### Request
```
GET /user_groups/UG1 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 92
Content-Type: application/json; charset=utf-8
ETag: W/"4f70c1c56a018738ee69c7b0d738ce30"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: abfc22c2-2820-4e95-a489-fa61a308e109
X-Runtime: 0.003711
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2015-08-06T00:18:41.000Z",
  "updated_at": "2015-08-06T00:18:41.000Z"
}
```

## POST /userGroups
Creates a new user_group and return 201 created.

### Example

#### Request
```
POST /user_groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 20
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user_group[][id]=UG1
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
X-Request-Id: 8fe1556f-62cd-425f-8772-64c23eb8a7d3
X-Runtime: 0.004407
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```

## POST /userGroups
Creates a new user_group and return 201 created.

### Example

#### Request
```
POST /user_groups HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 62
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user_group[][id]=UG1&user_group[][id]=UG2&user_group[][id]=UG3
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
X-Request-Id: a7a473b8-5298-44bb-ba52-32d4dd7e6200
X-Runtime: 0.007125
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```
