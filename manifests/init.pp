# == Class: puppet_pkgmgmt
#
# This module manages packages
#
class puppet_pkgmgmt {
    # hieralookup for sources list
    $hiera_sources = hiera_hash('apt_sources', {})
    create_resources('apt::source', $hiera_sources)
    $hiera_packages = hiera_hash('packages', {})
    create_resources('package', $hiera_packages)
}
