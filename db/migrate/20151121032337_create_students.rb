class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :stu_id
      t.string :pic
      t.integer :teacher_id
      t.integer :school_id


      t.timestamps null: false
    end
  end
end
