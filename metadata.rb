maintainer        "Cybera"
maintainer_email  "devops@cybera.ca"
license           "All rights reserved"
name              "swift_disk"
description       "A Fuse file system backed by OpenStack Swift object storage"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version           "0.1.0"

recipe "default",       ""

depends "logrotate"
depends "python"

