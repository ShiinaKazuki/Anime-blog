class CreateSecondSeasonEpisodes < ActiveRecord::Migration
  def change
    create_table :second_season_episodes do |t|
      t.string :commenter
      t.text :body
      t.references :secondseason, index: true

      t.timestamps
    end
  end
end
