class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :user, index: true
      t.references :venue, index: true
      t.integer :visits
      t.datetime :last_check_in

      t.timestamps null: false
    end
    add_foreign_key :visits, :users
    add_foreign_key :visits, :venues
  end
end
