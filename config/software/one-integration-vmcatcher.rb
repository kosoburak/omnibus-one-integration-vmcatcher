name "one-integration-vmcatcher"

default_version "0.1.0"

build do
  mkdir "#{install_dir}/bin"
  mkdir "#{install_dir}/etc"
  copy "#{project.files_path}/one-integration-vmcatcher-cronjob", "#{install_dir}/etc/one-integration-vmcatcher-cronjob"
  copy "#{project.files_path}/vmcatcher-env", "#{install_dir}/etc/vmcatcher-env"
  copy "#{project.files_path}/one-integration-vmcatcher", "#{install_dir}/bin/one-integration-vmcatcher"
end
