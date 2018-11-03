class Song < ApplicationRecord
  has_many :scores
  has_many :users, through: :scores

  def artist_slug
    self.artist_name.split(" ").join("_")
  end

  def song_slug
    self.song_name.split(" ").join("_")
  end


  def to_show
    {
      artist: self.artist_name,
      song: self.song_name,
      path: self.path,
      artist_slug: self.artist_slug,
      song_slug: self.song_slug
    }
  end
end
