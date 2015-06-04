class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :cost
      t.string :category

      t.timestamps null: false
    end
  end
end
