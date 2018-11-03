class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :song_name
      t.string :path

      t.timestamps
    end
  end
end
