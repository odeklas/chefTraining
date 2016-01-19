case node["platform"]
when "ubuntu"
	default["package_apache"] = "apache2"
	default["service_apache"] = "apache2"
	default["document_root"] = "/var/www/"
when "redhat"
	default["package_apache"] = "httpd"
	default["service_apache"] = "httpd"
	default["document_root"] = "/var/www/html"
end
