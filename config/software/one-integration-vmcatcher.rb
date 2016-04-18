name "one-integration-vmcatcher"

default_version "0.1.1"

build do
  mkdir "#{install_dir}/bin"
  mkdir "#{install_dir}/etc"
  mkdir "#{install_dir}/etc/cron.d"
  mkdir "#{install_dir}/etc/init.d"
  copy "#{project.files_path}/bin/one-integration-vmcatcher", "#{install_dir}/bin/one-integration-vmcatcher"
  copy "#{project.files_path}/etc/cron.d/one-integration-vmcatcher", "#{install_dir}/etc/cron.d/one-integration-vmcatcher"
  copy "#{project.files_path}/etc/init.d/one-integration-vmcatcher-cron", "#{install_dir}/etc/init.d/one-integration-vmcatcher-cron"
end
