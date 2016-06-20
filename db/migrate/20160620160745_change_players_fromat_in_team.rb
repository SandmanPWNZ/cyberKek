class ChangePlayersFromatInTeam < ActiveRecord::Migration
  def change
    change_column :team, :players, :text
  end
end
