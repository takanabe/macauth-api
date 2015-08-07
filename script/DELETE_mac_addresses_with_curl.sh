#/bin/sh

## DELETE /mac_addresses
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/mac_addresses/aabbccddeeff
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/mac_addresses/aabbccddeegg
curl -i -H 'Content-Type: application/json' -XDELETE 127.0.0.1/mac_addresses/aabbccddeehh
