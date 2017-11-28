class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :proj_name
      t.text :proj_description
      t.integer :goal_funding
      t.date :start_date
      t.date :end_date
      t.string :image_url
      t.boolen :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
