class SongSerializer < ActiveModel::Serializer
  attributes :artist_name, :song_name, :path
end
