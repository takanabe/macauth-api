#/bin/sh

## DELETE /user_groups
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/user_groups/UG1
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/user_groups/UG2
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/user_groups/UG3

