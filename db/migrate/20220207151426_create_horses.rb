class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.text :url
      t.timestamps
    end
    add_index :horses, :name, unique: true
  end
end
