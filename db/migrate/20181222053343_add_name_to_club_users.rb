class AddNameToClubUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :club_users, :first_name, :string
  	add_column :club_users, :last_name, :string
  end
end
