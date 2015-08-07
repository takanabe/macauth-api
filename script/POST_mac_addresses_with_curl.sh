#/bin/sh

## POST /mac_addresses -d
curl -i -H 'Content-Type: application/json' -XPOST 127.0.0.1/mac_addresses -d '{"mac_address": [{"id": "aabbccddeeff", "user_group_id": "UG1", "vlan_id": 1000, "information": "macbook air"},{"id": "aabbccddeegg", "user_group_id": "UG2", "vlan_id": 2000, "information": "macbook pro"},{"id": "aabbccddeehh", "user_group_id": "UG3", "vlan_id": 3000, "information": "macbook"}]}'

