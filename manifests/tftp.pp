class xinetd::tftp {
	file { "/etc/xinetd.d/tftp":
		ensure => present,
		owner => root,
		group => root,
		mode => 0664,
		source => "puppet:///config/tftp",
		notify => Service["xinetd"],
	}
}
