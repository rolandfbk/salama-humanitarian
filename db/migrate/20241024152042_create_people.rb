class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :category

      t.timestamps
    end
  end
end
