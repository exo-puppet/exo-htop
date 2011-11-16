class htop::install {
	package { "htop" :
		ensure => present
	}
}
