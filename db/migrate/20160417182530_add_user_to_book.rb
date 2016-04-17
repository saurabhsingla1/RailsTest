class AddUserToBook < ActiveRecord::Migration
  def change
  	add_column :books, :created_by, :integer, references: :users
  	add_column :books, :updated_by, :integer, references: :users
  end
end
