class CreateSecondseasons < ActiveRecord::Migration
  def change
    create_table :secondseasons do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
