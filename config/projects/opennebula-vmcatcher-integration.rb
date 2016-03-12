name "opennebula-vmcatcher-integration"
maintainer "Michal Kimle <kimle@cesnet.cz>"
homepage "https://github.com/CESNET/omnibus-opennebula-vmcatcher-integration"
description "Set of scripts integrating OpenNebula and NIFTY with vmcatcher and ITCHY"

# Defaults to C:/opennebula-vmcatcher-integration on Windows
# and /opt/opennebula-vmcatcher-integration on all other platforms
install_dir     "#{default_root}/#{name}"
build_version   "0.1.0"
build_iteration 1

# creates required build directories
dependency 'preparation'

# opennebula-vmcatcher-integration dependencies/components
dependency 'opennebula-vmcatcher-integration'

# version manifest file
dependency 'version-manifest'

# add external (runtime) dependencies/services
external_deps = ['nifty', 'itchy']
external_deps.each { |ext_dep| runtime_dependency ext_dep }

# tweaking package-specific options
package :deb do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  priority 'extra'
  section 'net'
end

package :rpm do
  vendor 'CESNET, Grid Department <cloud@metacentrum.cz>'
  license 'Apache 2.0'
  category 'Applications/Internet'
end

exclude '\.git*'
exclude 'bundler\/git'
