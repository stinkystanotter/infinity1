class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :sd_id
      t.string :sd_team_id
      t.string :mlb_team
      t.string :inf_pos

      t.timestamps
    end
  end
end
