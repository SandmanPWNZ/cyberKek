class Keque < ActiveRecord::Migration
  def change
    change_column :tournaments, :date_of, :datetime
  end
end
