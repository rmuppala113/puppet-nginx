# @summary A short summary of the purpose of this defined type.
#
# A description of what this defined type does
#
# @example
#   nginx::vhosts { 'namevar': }
define nginx::vhosts (
  Integer   $port,
  String[1] $servername,
) {
  file { "${nginx::vhosts_root}/${servername}.conf":
    ensure  => 'file',
    owner   => $nginx::vhosts_owner,
    group   => $nginx::vhosts_group,
    content => epp('nginx/vhosts.conf.epp', {'port' => $port, 'servername' => $servername}),
    notify  => Service["${nginx::service_name}"],
  }
}
