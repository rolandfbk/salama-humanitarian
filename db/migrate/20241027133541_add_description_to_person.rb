class AddDescriptionToPerson < ActiveRecord::Migration[7.2]
  def change
    add_column :people, :description, :text
  end
end
