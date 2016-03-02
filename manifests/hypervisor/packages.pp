class ovirt::hypervisor::packages {

	include ovirt::repo
	package { 'vdsm':
		ensure  => installed,
		require => Package[$ovirt::repo::ovirt_release],
		}
	package { 'glusterfs-fuse':
		ensure  => installed,
		require => Package[$ovirt::repo::ovirt_release],
		}
}
