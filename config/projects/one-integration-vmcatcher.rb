name "one-integration-vmcatcher"
maintainer "Michal Kimle <kimle@cesnet.cz>"
homepage "https://github.com/CESNET/omnibus-one-integration-vmcatcher"
description "Set of scripts integrating OpenNebula and NIFTY with vmcatcher and ITCHY"

# Defaults to C:/one-integration-vmcatcher on Windows
# and /opt/one-integration-vmcatcher on all other platforms
install_dir     "#{default_root}/#{name}"
build_version   "0.1.0"
build_iteration 1

# creates required build directories
dependency 'preparation'

# one-integration-vmcatcher dependencies/components
dependency 'one-integration-vmcatcher'

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
