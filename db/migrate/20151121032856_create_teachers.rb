class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :school_id
      t.integer :grade_id
      t.string :subject

      t.timestamps null: false
    end
  end
end
