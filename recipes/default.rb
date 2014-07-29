package "git"

# TODO: install python dependancies
include_recipe "python::pip"

["fusepy", "dateutils", "pyrax", "python-swiftclient"].each do |package_name|
  python_pip package_name
end


# TODO: mount fs volume

user node[:swift_disk][:username] do
  system true
  action :create
end

[
  node[:swift_disk][:install_directory],
  node[:swift_disk][:cache][:directory],
  node[:swift_disk][:mount][:directory],
  node[:swift_disk][:log][:directory],
].each do |path|
  directory path do
    owner node[:swift_disk][:username]
    group node[:swift_disk][:group]
    mode 0774
    recursive true
    action :create
  end
end

git node[:swift_disk][:install_directory] do
  repository node[:swift_disk][:git][:repository]
  revision node[:swift_disk][:git][:revision]
  ignore_failure true
  action :sync
end

template "#{node[:swift_disk][:install_directory]}/mount.cfg" do
  source "mount.cfg.erb"
  mode 0644
end

template "#{node[:swift_disk][:install_directory]}/logging.conf" do
  source "logging.conf.erb"
  mode 0644
end

# TODO: create template files for SwiftDisk
# TODO: create directory for SwiftDisk logs
# TODO: set up log rotate for SwiftDisk logs
# TODO: create service for SwiftDisk (/etc/init.d)
# TODO: install Samba Server or NFS
# TODO: create template file for Samba or NFS
