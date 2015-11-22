class CreateStudentSchools < ActiveRecord::Migration
  def change
    create_table :student_schools do |t|
      t.integer :student_id
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
