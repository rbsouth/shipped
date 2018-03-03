class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :origin
      t.string :destination
      t.decimal :cost
      t.integer :containers_needed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
