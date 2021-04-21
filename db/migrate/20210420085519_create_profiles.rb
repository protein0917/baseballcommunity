class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :position_id
      t.integer :dexterity_id
      t.string :team
      t.integer :age
      t.text :image
      t.timestamps
    end
  end
end
