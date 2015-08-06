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
ETag: W/"0b4a1f3ba115f15ac4ee65f8f08dd097"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a4583797-63b5-459e-afc3-256401ecbd24
X-Runtime: 0.029317
X-XSS-Protection: 1; mode=block

[
  {
    "id": "UG1",
    "created_at": "2015-08-06T00:05:34.000Z",
    "updated_at": "2015-08-06T00:05:34.000Z"
  },
  {
    "id": "UG2",
    "created_at": "2015-08-06T00:05:34.000Z",
    "updated_at": "2015-08-06T00:05:34.000Z"
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
ETag: W/"acd3d42c35c849bbf08ab28a6c927364"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9e4c4fb3-58b5-4b8b-8f47-90b07be56d00
X-Runtime: 0.002936
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2015-08-06T00:05:34.000Z",
  "updated_at": "2015-08-06T00:05:34.000Z"
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
X-Request-Id: 4b034eb8-9a93-4543-a70e-66ae96d0ee4b
X-Runtime: 0.016018
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
X-Request-Id: 56cb8259-d6d8-492f-a664-511e352d6865
X-Runtime: 0.006437
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```
