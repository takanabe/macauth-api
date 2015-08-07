#/bin/sh

#==================================================================================#
# This test shell run the 1 cycle shown as follows:
# 1. POST : Create new mac address, vlan and user group records
# 2. GET  : Get information of each resource
# 3. POST : Create same resources made in procedure #1 and it is expected to fail
# 4. DELETE : Delete all records created in proceduer #1
#==================================================================================#

# ./script/prepare_mac_local_env.sh
echo "\n*************** POST /mac_addresses ***************"
sh ./POST_mac_addresses_with_curl.sh
echo "\n*************** GET /mac_addresses ***************"
sh ./GET_mac_addresses_with_curl.sh
echo "\n*************** GET /vlans ***************"
sh ./GET_vlans_with_curl.sh
echo "\n*************** GET /user_groups ***************"
sh ./GET_user_groups_with_curl.sh
echo "\n*************** POST /mac_addresses ***************"
sh ./POST_mac_addresses_with_curl.sh
echo "\n*************** DELETE /mac_addresses/:id ***************"
sh ./DELETE_mac_addresses_with_curl.sh
echo "\n*************** DELETE /vlans/:id ***************"
sh ./DELETE_vlans_with_curl.sh
echo "\n*************** DELETE /user_groups/:id ***************"
sh ./DELETE_user_groups_with_curl.sh

