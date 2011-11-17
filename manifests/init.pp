# Class: htop
#
# This class manage htop
# 
# Parameters:
#	$lastversion:
#		this variable allow to chose if the htop package should always be updated (true) or not (false) (default: false)
class htop ($lastversion = "false") {
#	include htop::install
	class { "htop::install": }
}
