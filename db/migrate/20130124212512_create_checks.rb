class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.integer :beer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
