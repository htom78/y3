class AddUsrToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :usr_id, :integer
  end

  def self.down
    remove_column :comments, :usr_id
  end
end
