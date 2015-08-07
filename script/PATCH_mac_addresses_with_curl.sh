#/bin/sh

## PATCH /mac_addresses/:id -d
curl -i -H 'Content-Type: application/json' -XPATCH 127.0.0.1/mac_addresses/aabbccddeeff -d '{"mac_address": [{"id": "aabbccddeezz", "user_group_id": "UG1", "vlan_id": 1000, "information": "macbook air"}]}'

