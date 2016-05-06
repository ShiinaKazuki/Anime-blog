class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :commenter
      t.text :body
      t.references :anime, index: true

      t.timestamps
    end
  end
end
