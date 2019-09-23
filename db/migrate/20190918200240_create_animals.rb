class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.decimal :monthly, :precision => 8, :scale => 2
      t.references :type_animal, foreign_key: true
      t.references :people, foreign_key: true

      t.timestamps
    end
  end
end
