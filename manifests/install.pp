# Class: htop::install
#
# This class manage the installation of the htop package
class htop::install {
	
	$htop_ensure = $htop::lastversion ? {
		true      => latest,
		default   => present
	}
	
    package { "htop" : 
	   ensure  => $htop_ensure,
	   require => Exec ["repo-update"],
    }
    
    file { "${::root_home}/.htoprc":
        content => template("htop/user.htoprc"),
        path    => "${::root_home}/.htoprc",
    }
}
