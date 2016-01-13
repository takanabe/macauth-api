
# macauth vlans API


## GET /vlans
Returns an array of vlans.


### Example

#### Request
```
GET /vlans HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 195
Content-Type: application/json; charset=utf-8
ETag: W/"22775ae37d7a870db80685fd9896f73d"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a499bbde-7bfe-4a7a-bac3-3db05057af41
X-Runtime: 0.006189
X-XSS-Protection: 1; mode=block

{
  "vlans": [
    {
      "id": 1000,
      "created_at": "2016-01-13T07:35:25.000Z",
      "updated_at": "2016-01-13T07:35:25.000Z"
    },
    {
      "id": 2000,
      "created_at": "2016-01-13T07:35:25.000Z",
      "updated_at": "2016-01-13T07:35:25.000Z"
    }
  ]
}
```




## GET /vlans/:id
Returns vlan information hash.


### Example

#### Request
```
GET /vlans/1000 HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 91
Content-Type: application/json; charset=utf-8
ETag: W/"72b5f96d675a1315851fa9198a68608c"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6c4535fd-a5ec-48f8-8b9e-b75d02c62c92
X-Runtime: 0.003316
X-XSS-Protection: 1; mode=block

{
  "id": 1000,
  "created_at": "2016-01-13T07:35:25.000Z",
  "updated_at": "2016-01-13T07:35:25.000Z"
}
```




## POST /vlans
Creates a new vlan and return 201 created.


### Example

#### Request
```
POST /vlans HTTP/1.1
Accept: application/json
Content-Length: 47
Content-Type: application/json
Host: www.example.com

{
  "vlans": [
    {
      "id": 1000
    },
    {
      "id": 2000
    },
    {
      "id": 3000
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
X-Request-Id: 0e2a3712-5841-4889-b195-6db7dcd978af
X-Runtime: 0.008472
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```




## DELETE /vlans/:id
Deletes a target resource and returns 204 no content.


### Example

#### Request
```
DELETE /vlans/1000 HTTP/1.1
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
X-Request-Id: b8a1dd74-1338-46c7-ad83-dbe4f63d7ccb
X-Runtime: 0.003440
X-XSS-Protection: 1; mode=block
```




## PATCH /vlans/:id
Updates a target resource and returns 204 no content.


### Example

#### Request
```
PATCH /vlans/1000 HTTP/1.1
Accept: application/json
Content-Length: 22
Content-Type: application/json
Host: www.example.com

{
  "vlan": [
    {
      "id": 1000
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
X-Request-Id: 8e1d9e79-d1f6-4ea9-8ff6-10b8a27913dd
X-Runtime: 0.005524
X-XSS-Protection: 1; mode=block
```
