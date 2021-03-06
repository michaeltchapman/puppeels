#
# Author: Yanis Guenane <yguenane@gmail.com>
# License: ApacheV2
#
# Puppet module :
#   mod 'puppetlabs/haproxy'
#   mod 'puppetlabs/stdlib'
#   mod 'puppetlabs/concat'
#
class profile::highavailability::loadbalancing::haproxy (
  $haproxy_listens           = {},
  $haproxy_balancermembers   = {},
) {

  include ::haproxy
  create_resources('haproxy::listen', $haproxy_listens)
  create_resources('haproxy::balancermember', $haproxy_balancermembers)

}
