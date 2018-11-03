class SongSerializer < ActiveModel::Serializer
  attributes :artist_name, :song_name, :path,:artist,:song

  def artist
    object.artist_slug
  end

  def song
    object.song_slug
  end
end
