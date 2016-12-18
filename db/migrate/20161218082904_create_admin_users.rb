class CreateAdminUsers < ActiveRecord::Migration[5.0]
  	def up
    	create_table :admin_users do |t|
    	t.column "first_name", :string, :limit => 64
    	t.string "last_name", :limit => 64
    	t.string "email", :limit => 64
    	t.string "password_digest"
      	t.timestamps
    	end
  	end

  	def down
  		drop_table :admin_users
  	end

end
