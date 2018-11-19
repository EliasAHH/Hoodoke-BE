class Song < ApplicationRecord
  has_many :scores
  has_many :users, through: :scores

  def artist_slug
    self.artist_name.downcase.split(" ").join("_")
  end

  def song_slug
    self.song_name.downcase.split(" ").join("_")
  end


  # def to_show
  #   {
  #     id: self.id,
  #     artist_name: self.artist_name,
  #     song_name: self.song_name,
  #     path: self.path,
  #     artist: self.artist_slug,
  #     song: self.song_slug,
  #     scores: self.scores,
  #     users: self.users
  #
  #   }
  # end
end
