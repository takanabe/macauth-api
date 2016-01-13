
# macauth mac_addresses API


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
Content-Length: 391
Content-Type: application/json; charset=utf-8
ETag: W/"897333cb81db0cc76594c7a18b05722f"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e42a6880-3e14-4765-877f-414767416e4c
X-Runtime: 0.020546
X-XSS-Protection: 1; mode=block

{
  "mac_addresses": [
    {
      "id": "aabbccddeeff",
      "user_group_id": "UG1",
      "vlan_id": 1000,
      "information": "macbook air",
      "created_at": "2016-01-13T07:35:24.000Z",
      "updated_at": "2016-01-13T07:35:24.000Z"
    },
    {
      "id": "bbaabbccddee",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook pro",
      "created_at": "2016-01-13T07:35:24.000Z",
      "updated_at": "2016-01-13T07:35:24.000Z"
    }
  ],
  "total_pages": 2,
  "current_page_size": 2
}
```


## GET /mac_addresses/search
Returns keyword-matched data.


### Example

#### Request
```
GET /mac_addresses/search?q=UG2&page=1 HTTP/1.1
Accept: application/json
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 391
Content-Type: application/json; charset=utf-8
ETag: W/"41616e4d65a716a20ced20ef15eef923"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7c4615e4-c82b-4e0c-81d1-f1ce1de69c66
X-Runtime: 0.011377
X-XSS-Protection: 1; mode=block

{
  "mac_addresses": [
    {
      "id": "bbaabbccddee",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook pro",
      "created_at": "2016-01-13T07:35:24.000Z",
      "updated_at": "2016-01-13T07:35:24.000Z"
    },
    {
      "id": "bbaabbccddff",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook air",
      "created_at": "2016-01-13T07:35:24.000Z",
      "updated_at": "2016-01-13T07:35:24.000Z"
    }
  ],
  "total_pages": 2,
  "current_page_size": 2
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
ETag: W/"cc108365e0fabffe00281199c8002ebb"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f495a6b7-b4b6-49f7-9c5c-390ca0c83c6f
X-Runtime: 0.005151
X-XSS-Protection: 1; mode=block

{
  "id": "aabbccddeeff",
  "user_group_id": "UG1",
  "vlan_id": 1000,
  "information": "macbook air",
  "created_at": "2016-01-13T07:35:24.000Z",
  "updated_at": "2016-01-13T07:35:24.000Z"
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
      "id": "aaaabbccddee",
      "user_group_id": "UG2",
      "vlan_id": 2000,
      "information": "macbook pro"
    },
    {
      "id": "aabbccddeeee",
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
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49da3a57-5708-42ce-bdbc-c45c146616b0
X-Runtime: 0.022236
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
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ad15550f-bacc-4ca6-884b-9283e9ce7036
X-Runtime: 0.004096
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
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f2c04213-b62f-4842-a74a-ae60d23ba242
X-Runtime: 0.005265
X-XSS-Protection: 1; mode=block
```
