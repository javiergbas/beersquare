class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :country

      t.timestamps
    end
  end
end
