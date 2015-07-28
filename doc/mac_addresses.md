## GET /mac_addresses
Should return 200 ok.

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
Content-Length: 487
Content-Type: application/json; charset=utf-8
ETag: W/"f82a3cb4f82b4e2852890e69b25487d9"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cae66574-8b6e-48f8-a094-7fbbda34c08a
X-Runtime: 0.015281
X-XSS-Protection: 1; mode=block

[
  {
    "id": "aa:bb:cc:dd:ee:ff",
    "ug_id": "ug1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T09:55:30.000Z",
    "updated_at": "2015-07-27T09:55:30.000Z"
  },
  {
    "id": "aa:bb:cc:dd:ee:gg",
    "ug_id": "ug1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T09:55:30.000Z",
    "updated_at": "2015-07-27T09:55:30.000Z"
  },
  {
    "id": "b",
    "ug_id": "iac1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T06:51:08.000Z",
    "updated_at": "2015-07-27T06:51:08.000Z"
  }
]
```

## GET /mac_addresses
Should return array of .

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
Content-Length: 487
Content-Type: application/json; charset=utf-8
ETag: W/"f82a3cb4f82b4e2852890e69b25487d9"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3275c8f1-bd11-4cce-bdc1-0858018cf0b4
X-Runtime: 0.022405
X-XSS-Protection: 1; mode=block

[
  {
    "id": "aa:bb:cc:dd:ee:ff",
    "ug_id": "ug1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T09:55:30.000Z",
    "updated_at": "2015-07-27T09:55:30.000Z"
  },
  {
    "id": "aa:bb:cc:dd:ee:gg",
    "ug_id": "ug1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T09:55:30.000Z",
    "updated_at": "2015-07-27T09:55:30.000Z"
  },
  {
    "id": "b",
    "ug_id": "iac1",
    "vlan_id": "vlan1",
    "information": "macbook air",
    "created_at": "2015-07-27T06:51:08.000Z",
    "updated_at": "2015-07-27T06:51:08.000Z"
  }
]
```
