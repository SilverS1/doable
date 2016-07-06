class AddUsernameAndAvatarToUsers < ActiveRecord::Migration
  def change

	# Extra info
    add_column :users, :role, :string
    add_column :users, :username, :string



  end

  def self.up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :users, :avatar
  end
end
