class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.string :reward_name
      t.integer :reward_amount
      t.text :reward_description
      t.integer :reward_limit
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
