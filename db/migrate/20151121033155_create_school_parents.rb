class CreateSchoolParents < ActiveRecord::Migration
  def change
    create_table :school_parents do |t|
      t.integer :parent_id
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
