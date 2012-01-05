################################################################################
#
# This class manage htop
#
# Tested platforms:
#   - Ubuntu 11.10 Oneiric
#   - Ubuntu 11.04 Natty
#   - Ubuntu 10.04 Lucid
#
# == Parameters
#
#   [+lastversion+]
#       (OPTIONAL) (default: false)
#       
#       this variable allow to chose if the htop package should always be updated (true) or not (false)
#
# == Modules Dependencies
#
# [+repo+]
#   the +repo+ puppet module is needed to :
#   
#   - refresh the repository before installing package (in htop::install)
#
# == Examples
#
#   class { "htop": lastversion => true }
#
################################################################################
class htop ($lastversion = false) {
    
    include repo
    include htop::install
}
