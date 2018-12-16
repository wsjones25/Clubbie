class DropClubUsers < ActiveRecord::Migration[5.2]
  def change
  	drop_table :clubusers
  end
end
