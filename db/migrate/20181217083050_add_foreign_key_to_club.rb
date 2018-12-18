class AddForeignKeyToClub < ActiveRecord::Migration[5.2]
  def change
  	add_reference :clubs, :club_user, foreign_key: true
  end
end
