module SongsHelper
  def artist_id_field(song)
    if song.artist.nil?
      select_tag "song[artist_name]", options_from_collection_for_select(Artist.all, :id, :name)
    else
        hidden_field_tag "song[artist_name]", song.artist_name
    end
  end
end
