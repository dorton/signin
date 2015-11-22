class CreateCampusGrades < ActiveRecord::Migration
  def change
    create_table :campus_grades do |t|
      t.integer :school_id
      t.integer :grade_id

      t.timestamps null: false
    end
  end
end
