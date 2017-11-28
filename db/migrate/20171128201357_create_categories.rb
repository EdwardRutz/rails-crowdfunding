class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :cat_types

      t.timestamps
    end
  end
end
