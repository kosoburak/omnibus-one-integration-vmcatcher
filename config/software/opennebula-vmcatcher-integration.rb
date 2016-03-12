name "opennebula-vmcatcher-integration"

default_version "0.1.0"

build do
  mkdir "#{install_dir}/bin"
  mkdir "#{install_dir}/etc"
  copy "#{project.files_path}/opennebula-vmcatcher-integration-cronjob", "#{install_dir}/etc/opennebula-vmcatcher-integration-cronjob"
  copy "#{project.files_path}/opennebula-vmcatcher-integration", "#{install_dir}/bin/opennebula-vmcatcher-integration"
end
