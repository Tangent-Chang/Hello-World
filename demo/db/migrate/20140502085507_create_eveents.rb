class CreateEveents < ActiveRecord::Migration
  def change
    create_table :eveents do |t|
      t.string :name
      t.text :description
      t.boolean :is_public
      t.integer :capacity

      t.timestamps
    end
  end
end
