require 'yaml'

class Parser
  def self.parse(path_to_file)
    file = File.read(path_to_file)
    music_hash = YAML::load(file)
  end
end

x = Parser.parse("music.yaml")
puts x["genres"].last["artists"].first["albums"].first["tracks"].last["name"]
puts x.genres.last.artists.first.albums.first.tracks.last.name
