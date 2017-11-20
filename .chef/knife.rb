log_level                :info
current_dir = File.dirname(__FILE__)

#node_name                "provisioner"
#client_key               "#{current_dir}/dummy.pem"
#validation_client_name   "validator"

cookbook_path [ '/mydata/chef-repo/cookbooks', "#{current_dir}/../cookbooks" ]
