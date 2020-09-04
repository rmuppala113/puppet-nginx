# @summary A short summary of the purpose of this class
#
class nginx::config {
  file { "${nginx::config_path}":
    source => "puppet:///modules/nginx/${osfamily}.conf",
    ensure => $nginx::config_ensure,
  }
}
