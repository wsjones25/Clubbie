class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :team_type
      t.string :league
      t.string :last_year_position
      t.text :training
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
