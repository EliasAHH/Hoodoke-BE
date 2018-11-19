class SongSerializer < ActiveModel::Serializer
  attributes :id, :artist_name, :song_name, :path,:artist,:song
  has_many :scores

  # adding a high score later on

  def artist
    object.artist_slug
  end

  def song
    object.song_slug
  end
end
