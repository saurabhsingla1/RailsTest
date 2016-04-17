class AddFieldsToBook < ActiveRecord::Migration
  def change
	add_column :books, :isdn, :string
	add_column :books, :book_category, :integer
	add_column :books, :year_of_publication, :integer
	add_column :books, :condition, :string
	add_column :books, :description, :string
	add_column :books, :original_price, :decimal, precision: 5, scale: 2
	add_column :books, :offer_price, :decimal, precision: 5, scale: 2
	add_column :books, :is_available_for_exchange, :integer, :limit => 1
	add_column :books, :book_status, :integer

  end
end
