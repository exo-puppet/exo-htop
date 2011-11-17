# Class: htop::install
#
# This class manage the installation of the htop package
class htop::install {
	
	$htop_ensure = $htop::lastversion ? {
		true => latest,
		default => present
	}
	#notify { "htop ensure mode = $htop_ensure": withpath => false }
	info ("htop ensure mode = $htop_ensure")
	
	package { "htop" : ensure => $htop_ensure }
}
