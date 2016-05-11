class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
