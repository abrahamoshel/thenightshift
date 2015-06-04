class CreateVenueMenus < ActiveRecord::Migration
  def change
    create_table :venue_menus do |t|
      t.references :venue, index: true
      t.references :menu, index: true

      t.timestamps null: false
    end
    add_foreign_key :venue_menus, :venues
    add_foreign_key :venue_menus, :menus
  end
end
