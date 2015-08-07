
# Mackun2 mac_addresses API


## GET /mac_addresses
Returns an array of mac addresses.


### Example

#### Request
```
GET /mac_addresses HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 335
Content-Type: application/json; charset=utf-8
ETag: W/"cf7f7302d7dcf49efe023a37e175df7e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 41a264b0-455c-49fa-8f01-b1659dc1d8b5
X-Runtime: 0.017337
X-XSS-Protection: 1; mode=block

[
  {
    "id": "aabbccddeeff",
    "user_group_id": "UG1",
    "vlan_id": 1000,
    "information": "macbook air",
    "created_at": "2015-08-07T00:37:30.000Z",
    "updated_at": "2015-08-07T00:37:30.000Z"
  },
  {
    "id": "aabbccddeegg",
    "user_group_id": "UG2",
    "vlan_id": 2000,
    "information": "macbook pro",
    "created_at": "2015-08-07T00:37:30.000Z",
    "updated_at": "2015-08-07T00:37:30.000Z"
  }
]
```

## GET /mac_addresses/:id
Returns a macaddress information hash.


### Example

#### Request
```
GET /mac_addresses/aabbccddeeff HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 166
Content-Type: application/json; charset=utf-8
ETag: W/"973cff2c54b347045e21499cd0639c9b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1e614299-6008-421b-aeeb-b202ede935d1
X-Runtime: 0.002727
X-XSS-Protection: 1; mode=block

{
  "id": "aabbccddeeff",
  "user_group_id": "UG1",
  "vlan_id": 1000,
  "information": "macbook air",
  "created_at": "2015-08-07T00:37:30.000Z",
  "updated_at": "2015-08-07T00:37:30.000Z"
}
```




## POST /mac_addresses
Creates a new mac_address and return 201 created.


### Example

#### Request
```
POST /mac_addresses HTTP/1.1
Accept: application/json
Content-Length: 274
Content-Type: application/json
Host: www.example.com

{
  "mac_address": [
    {
      "id": "aabbccddeeff",
      "user_group_id": "UG1",
      "vlan_id": 1000,
      "information": "macbook air"
    },
    {
      "id": "aabbccddeegg",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook pro"
    },
    {
      "id": "aabbccddeehh",
      "user_group_id": "UG3",
      "vlan_id": 3000,
      "information": "macbook"
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
X-Request-Id: ff364bc4-cd51-4763-80c7-5b24ee8df936
X-Runtime: 0.019866
X-XSS-Protection: 1; mode=block

{
  "succeeded": "201 Created"
}
```




## DELETE /mac_addresses/:id
Deletes a target resource and returns 204 no content.


### Example

#### Request
```
DELETE /mac_addresses/aabbccddeeff HTTP/1.1
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
X-Request-Id: fc51ef72-ddb5-4ff6-86c9-1476d16deaa2
X-Runtime: 0.003704
X-XSS-Protection: 1; mode=block
```




## PATCH /mac_addresses/:id
Updates a target resource and returns 204 no content.


### Example

#### Request
```
PATCH /mac_addresses/aabbccddeeff HTTP/1.1
Accept: application/json
Content-Length: 104
Content-Type: application/json
Host: www.example.com

{
  "mac_address": [
    {
      "id": "aabbccddeeff",
      "user_group_id": "UG1",
      "vlan_id": 1000,
      "information": "macbook air"
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
X-Request-Id: 4fa3443a-5623-4872-b7ee-eabb8f97f33a
X-Runtime: 0.005665
X-XSS-Protection: 1; mode=block
```
