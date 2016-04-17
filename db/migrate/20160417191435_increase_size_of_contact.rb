class IncreaseSizeOfContact < ActiveRecord::Migration
  def change

  	change_column :users, :contact_number_1, :bigint, :limit => 15
  	change_column :users, :contact_number_2, :bigint, :limit => 15
  end
end
