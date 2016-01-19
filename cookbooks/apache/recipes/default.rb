#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# chef-repo/cookbook/apache

# Install apache httpd


package node["package_apache"] do 
	action :install
end

# Start the service 
# Make sure the service starts on reboot

service node["service_apache"] do
	action [:start, :enable]
end 

# write a home page

# cookbook_file "/var/www/html/index.html" do
# 	source "index.html"
# 	mode "0664"
# end 

template "#{node["document_root"]}/index.html" do
	source "index.html.erb"
 	mode "0664"
end


