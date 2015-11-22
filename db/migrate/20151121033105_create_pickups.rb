class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :student_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
