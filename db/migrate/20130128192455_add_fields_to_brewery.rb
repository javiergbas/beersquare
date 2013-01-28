class AddFieldsToBrewery < ActiveRecord::Migration
  def up
    add_column :breweries, :state, :string
    add_column :breweries, :city, :string
    add_column :breweries, :address, :string
    add_column :breweries, :zip_code, :string
    remove_column :breweries, :title
  end

  def down
    add_column :breweries, :title, :string
    remove_column :breweries, :state
    remove_column :breweries, :city
    remove_column :breweries, :address
    remove_column :breweries, :zip_code
  end
end
