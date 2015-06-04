class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :f_name
      t.string :l_name
      t.string :image
      t.references :user, index: true

      t.timestamps null: false
    end

    add_foreign_key :profiles, :users
  end
end
