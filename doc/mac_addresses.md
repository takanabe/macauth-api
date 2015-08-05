## GET /mac_addresses/:id
Returns macaddress information hash.

### Example

#### Request
```
GET /mac_addresses/aabbccddeeff HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 166
Content-Type: application/json; charset=utf-8
ETag: W/"20bf3c1a04f197dc0873d93a64c91c0f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c7eec755-0753-4247-a314-0252c616e1e2
X-Runtime: 0.002653
X-XSS-Protection: 1; mode=block

{
  "id": "aabbccddeeff",
  "user_group_id": "UG1",
  "vlan_id": 1000,
  "information": "macbook air",
  "created_at": "2015-08-04T00:18:36.000Z",
  "updated_at": "2015-08-04T00:18:36.000Z"
}
```

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
ETag: W/"fd7a8d5f3a4283e846590aa9715c641b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: aa0dc15a-1286-41c1-b6d2-b38d9736b57a
X-Runtime: 0.003562
X-XSS-Protection: 1; mode=block

[
  {
    "id": "aabbccddeeff",
    "user_group_id": "UG1",
    "vlan_id": 1000,
    "information": "macbook air",
    "created_at": "2015-08-04T00:18:36.000Z",
    "updated_at": "2015-08-04T00:18:36.000Z"
  },
  {
    "id": "aabbccddeegg",
    "user_group_id": "UG2",
    "vlan_id": 2000,
    "information": "macbook pro",
    "created_at": "2015-08-04T00:18:36.000Z",
    "updated_at": "2015-08-04T00:18:36.000Z"
  }
]
```
