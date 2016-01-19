name "base-redhat"
description "Base trola for RedHat"
run_list "recipe[yum::default]", "recipe[chef-client::cron]"