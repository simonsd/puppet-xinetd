class xinetd::rsync {
	file { "/etc/xinetd.d/rsync":
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///config/rsync",
		notify => Service["xinetd"],
	}
}
