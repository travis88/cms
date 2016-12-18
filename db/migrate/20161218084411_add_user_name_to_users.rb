class AddUserNameToUsers < ActiveRecord::Migration[5.0]
  	def up 
  		add_column("admin_users", "username", :string, :limit => 25, :after => "email")
  		add_index("admin_users", "username")
  	end

  	def down
  		remove_index("admin_users", "username")
  		remove_column("admin_users", "username")
  	end
end
