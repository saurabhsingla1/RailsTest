class AddUsernameToUser < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :contact_number_1, :integer
  	
  	add_column :users, :contact_number_2, :integer
  end
end
