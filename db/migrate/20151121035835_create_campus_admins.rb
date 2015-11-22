class CreateCampusAdmins < ActiveRecord::Migration
  def change
    create_table :campus_admins do |t|
      t.string :name
      t.string :email
      t.integer :campus_id

      t.timestamps null: false
    end
  end
end
