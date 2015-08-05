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
ETag: W/"8fc10b0cda65a93c70f5be7a0c9738c1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7b8a3963-48e1-4a80-92ea-e20411347361
X-Runtime: 0.003346
X-XSS-Protection: 1; mode=block

{
  "id": "UG1",
  "created_at": "2015-08-05T13:05:51.000Z",
  "updated_at": "2015-08-05T13:05:51.000Z"
}
```

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
ETag: W/"abbcf75a712bbf772ffb2e27d1e80d9b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 691061f4-5617-4893-93ac-cc5b0a7e132c
X-Runtime: 0.004780
X-XSS-Protection: 1; mode=block

[
  {
    "id": "UG1",
    "created_at": "2015-08-05T13:05:51.000Z",
    "updated_at": "2015-08-05T13:05:51.000Z"
  },
  {
    "id": "UG2",
    "created_at": "2015-08-05T13:05:51.000Z",
    "updated_at": "2015-08-05T13:05:51.000Z"
  }
]
```
