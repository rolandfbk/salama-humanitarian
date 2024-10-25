class CreateAllocations < ActiveRecord::Migration[7.2]
  def change
    create_table :allocations do |t|
      t.references :person, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
