class AddTeamLogoToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :team_logo, :string
    add_column :teams, :won, :string
    add_column :teams, :discipline, :string
    add_column :tournaments, :size_of, :integer
    add_column :tournaments, :game, :string
    add_column :tournaments, :date_of, :text
  end
end
