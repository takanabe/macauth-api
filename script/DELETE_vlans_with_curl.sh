#/bin/sh

## DELETE /vlans
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/vlans/1000
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/vlans/2000
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/vlans/3000
