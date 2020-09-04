# @summary A short summary of the purpose of this class
# @example
#   include nginx::install
class nginx::install {
  package { "${nginx::install_name}":
    ensure => $nginx::install_ensure,
  }
}
