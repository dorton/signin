class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :city
      t.string :campus_name
      t.string :classification

      t.timestamps null: false
    end
  end
end
