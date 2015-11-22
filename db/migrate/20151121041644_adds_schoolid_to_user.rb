class AddsSchoolidToUser < ActiveRecord::Migration
  def change
    add_column :users, :school_id, :integer
    remove_column :users, :campus_id
  end
end
