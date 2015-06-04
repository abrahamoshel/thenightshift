class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.integer :latest_venue, index: true
      t.timestamps null: false
    end
  end
end
