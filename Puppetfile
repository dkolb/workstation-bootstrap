# This is currently a noop but will be supported in the future.
forge 'forge.puppetlabs.com'

#
# Until https://tickets.puppetlabs.com/browse/RK-3 is fixed,
# r10k doesn't have dependency resolution so we need to specify
# everything here explicitly.
#

# IMPORTANT: when updating this file, also update .fixtures.yml

#######################################
# workstation-bootstrap upstream code #
#######################################

mod 'workstation_bootstrap', :local => true

### modules ###
mod 'archlinux_workstation',
  :git => 'https://github.com/jantman/puppet-archlinux-workstation.git'

### module dependencies ###
mod 'puppetlabs/stdlib', '4.10.0'
mod 'saz/sudo', '4.2.0' # dependency of jantman/archlinux_workstation
mod 'saz/ssh', '3.0.1' # dependency of jantman/archlinux_macbookretina
mod 'puppetlabs/concat', '2.2.1' # dependency of saz/ssh
mod 'puppetlabs/firewall', '2.7.0'
mod 'puppetlabs/vcsrepo', '1.3.1'
mod 'nanliu/staging', '1.0.3'
mod 'duritong/sysctl', '0.0.11' # dependency of jantman/archlinux_macbookretina
mod 'puppetlabs/inifile', '1.4.2' # dependency of jantman/archlinux_macbookretina
# Note: the last release of garethr/docker, 5.3.0, generates systemd unit files
# that parse incorrectly as of systemd 241. The suggested replacement,
# puppetlabs/docker, isn't compatible with ArchLinux. Use my fork of garethr/docker
# that includes a fix.
mod 'docker', # dependency of jantman/archlinux_workstation
  :git => 'https://github.com/jantman/garethr-docker.git',
  :ref => 'master-systemd241'
mod 'stahnma/epel', '1.3.0' # dependency of docker
mod 'puppetlabs/apt', '2.3.0' # dependency of docker

##########################################################
# user-specific                                          #
##########################################################
# (either replace this with your own, or just remove it) #
##########################################################

mod 'privatepuppet',
  :git => 'git@github.com:jantman/privatepuppet.git'

mod 'puppetlabs/mysql', '3.6.1'
mod 'cyberious/apm', '0.1.1'
