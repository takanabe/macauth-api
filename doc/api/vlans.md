
# Mackun2 vlans API


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
ETag: W/"f5a9d8af8f029bdb394cf334656d1bbc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f4be86c9-4741-4fc7-bc7a-dd75b479ce7f
X-Runtime: 0.004835
X-XSS-Protection: 1; mode=block

{
  "vlans": [
    {
      "id": 1000,
      "created_at": "2015-10-10T03:17:18.000Z",
      "updated_at": "2015-10-10T03:17:18.000Z"
    },
    {
      "id": 2000,
      "created_at": "2015-10-10T03:17:18.000Z",
      "updated_at": "2015-10-10T03:17:18.000Z"
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
ETag: W/"cd5d2725dfd6b4188b38f0bb0ccbf767"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d2aee2cb-7c95-4f11-bb59-4b47b5dc5299
X-Runtime: 0.003868
X-XSS-Protection: 1; mode=block

{
  "id": 1000,
  "created_at": "2015-10-10T03:17:18.000Z",
  "updated_at": "2015-10-10T03:17:18.000Z"
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bdc70a28-d11f-4dba-8a10-e09a6ae4bf9d
X-Runtime: 0.008576
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4b8a9a38-01d3-4781-b47d-4a5f5332e29e
X-Runtime: 0.004506
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
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cebe9084-66ca-4e6d-a5b2-da542f2122ba
X-Runtime: 0.004805
X-XSS-Protection: 1; mode=block
```
