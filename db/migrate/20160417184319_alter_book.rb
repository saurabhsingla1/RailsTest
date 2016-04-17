class AlterBook < ActiveRecord::Migration
  def change

  	change_column :books, :book_status,  :string
  end
end
