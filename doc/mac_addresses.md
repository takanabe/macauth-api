## GET /mac_addresses
Returns array of mac addresses.

### Example

#### Request
```
GET /mac_addresses HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 335
Content-Type: application/json; charset=utf-8
ETag: W/"c3e0f1d96f3fdb3bb331b703b6e94841"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 001e8a8e-4d39-4eca-86fc-b3f41c4fc845
X-Runtime: 0.021611
X-XSS-Protection: 1; mode=block

[
  {
    "id": "aabbccddeeff",
    "user_group_id": "UG1",
    "vlan_id": 1000,
    "information": "macbook air",
    "created_at": "2015-08-04T00:03:00.000Z",
    "updated_at": "2015-08-04T00:03:00.000Z"
  },
  {
    "id": "aabbccddeegg",
    "user_group_id": "UG2",
    "vlan_id": 2000,
    "information": "macbook pro",
    "created_at": "2015-08-04T00:03:00.000Z",
    "updated_at": "2015-08-04T00:03:00.000Z"
  }
]
```
