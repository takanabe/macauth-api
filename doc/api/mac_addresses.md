
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
Content-Length: 520
Content-Type: application/json; charset=utf-8
ETag: W/"cfabb89e8686cd9462cc4293daa36a8d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 75d5ff22-cc9e-4897-b077-d4d802e538f1
X-Runtime: 0.010100
X-XSS-Protection: 1; mode=block

{
  "mac_addresses": [
    {
      "id": "aabbccddeeff",
      "user_group_id": "UG1",
      "vlan_id": 1000,
      "information": "macbook air",
      "created_at": "2015-10-10T03:17:17.000Z",
      "updated_at": "2015-10-10T03:17:17.000Z"
    },
    {
      "id": "aabbccddeegg",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook pro",
      "created_at": "2015-10-10T03:17:17.000Z",
      "updated_at": "2015-10-10T03:17:17.000Z"
    },
    {
      "id": "aabbccddeezz",
      "user_group_id": "UG1",
      "vlan_id": 1000,
      "information": "macbook air",
      "created_at": "2015-08-07T06:33:18.000Z",
      "updated_at": "2015-08-07T06:33:51.000Z"
    }
  ]
}
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
ETag: W/"ffd69636916118be3af6bf800f7d8192"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a8d718f4-c892-483c-8f4f-ed905d205ebf
X-Runtime: 0.003035
X-XSS-Protection: 1; mode=block

{
  "id": "aabbccddeeff",
  "user_group_id": "UG1",
  "vlan_id": 1000,
  "information": "macbook air",
  "created_at": "2015-10-10T03:17:17.000Z",
  "updated_at": "2015-10-10T03:17:17.000Z"
}
```




## POST /mac_addresses
Creates a new mac_address and return 201 created.


### Example

#### Request
```
POST /mac_addresses HTTP/1.1
Accept: application/json
Content-Length: 276
Content-Type: application/json
Host: www.example.com

{
  "mac_addresses": [
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
X-Request-Id: 0dec78ff-cfec-4902-a711-96629a31a023
X-Runtime: 0.021489
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
X-Request-Id: 091be8c9-585d-47b7-96d3-9ffd7f65efff
X-Runtime: 0.003905
X-XSS-Protection: 1; mode=block
```


## PATCH /mac_addresses/:id
Updates a target resource and returns 204 no content.


### Example

#### Request
```
PATCH /mac_addresses/aabbccddeeff HTTP/1.1
Accept: application/json
Content-Length: 102
Content-Type: application/json
Host: www.example.com

{
  "mac_address": {
    "id": "aabbccddeeff",
    "user_group_id": "UG1",
    "vlan_id": 1000,
    "information": "macbook air"
  }
}
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 12b9802b-b72a-414f-860e-1773702ecf74
X-Runtime: 0.007531
X-XSS-Protection: 1; mode=block
```
