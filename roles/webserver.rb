 name "webserver"
 description "Web Server"
 run_list "recipe[my-company]","recipe[apache]"
 default_attributes({
 	"company" => "Odeklas"
 	})