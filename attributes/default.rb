
# Swift connection settings
default[:swift][:auth_url] = "http://localhost:5000/v2.0/"
default[:swift][:username] = "SwiftUser"
default[:swift][:password] = "MySuperSecretPassword"
default[:swift][:region] = "MyRegion"
default[:swift][:tenant_id] = "mytenantid"
default[:swift][:tenant_name] = "My Tenant Name"

# Mount settings
default[:swift_disk][:install_directory] = "/opt/swift_disk"
default[:swift_disk][:username] = "swiftdisk"
default[:swift_disk][:group] = "swiftdisk"
default[:swift_disk][:metadata_collection] = "demand"   # can be "demand" or "prefetch"
default[:swift_disk][:cache][:directory] = "/export/swift_cache"
default[:swift_disk][:mount][:directory] = "/export/my_swift_disk"
default[:swift_disk][:swift][:primary_bucket] = "swift_disk"
default[:swift_disk][:log][:directory] = "/etc/swiftdisk"
default[:swift_disk][:log][:level][:swift_worker] = "WARNING"
default[:swift_disk][:log][:level][:swift] = "WARNING"
default[:swift_disk][:log][:level][:fuse] = "WARNING"
default[:swift_disk][:git][:repository] = "https://github.com/cybera/fusepy-moodledata"
default[:swift_disk][:git][:revision] = "master"

# Samba settings


# NFS settings
