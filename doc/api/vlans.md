
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
Content-Length: 185
Content-Type: application/json; charset=utf-8
ETag: W/"78c3c7c5c640503cba17969bb55c2c55"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b4ebf3d7-a8bb-4b68-9536-c86eb049ec76
X-Runtime: 0.011229
X-XSS-Protection: 1; mode=block

[
  {
    "id": 1000,
    "created_at": "2015-08-07T00:37:31.000Z",
    "updated_at": "2015-08-07T00:37:31.000Z"
  },
  {
    "id": 2000,
    "created_at": "2015-08-07T00:37:31.000Z",
    "updated_at": "2015-08-07T00:37:31.000Z"
  }
]
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
ETag: W/"2b957f24157b6d388efa3d82f67fb088"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fdaccd95-68b4-4e32-8de8-5ecbf5f79aca
X-Runtime: 0.003574
X-XSS-Protection: 1; mode=block

{
  "id": 1000,
  "created_at": "2015-08-07T00:37:31.000Z",
  "updated_at": "2015-08-07T00:37:31.000Z"
}
```




## POST /vlans
Creates a new vlan and return 201 created.


### Example

#### Request
```
POST /vlans HTTP/1.1
Accept: application/json
Content-Length: 46
Content-Type: application/json
Host: www.example.com

{
  "vlan": [
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
X-Request-Id: 644fc1a1-3e4a-4f32-aeca-74b04c486342
X-Runtime: 0.008026
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
X-Request-Id: 498d90df-2d55-4024-bcd8-b8c2365678e2
X-Runtime: 0.004870
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
X-Request-Id: 0e0ebc32-9d88-463a-85e5-889bc2ded898
X-Runtime: 0.007818
X-XSS-Protection: 1; mode=block
```
