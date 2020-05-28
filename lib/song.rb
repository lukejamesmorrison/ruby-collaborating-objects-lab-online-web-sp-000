class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    file_parts = filename.split(' - '); #0 - artist, 1 - title, 3 - genre.extension
    song = self.new(file_parts[1])

    artist = artist_name=(file_parts[0])
    artist.add_song(song)
    song

    # self.all << song
  end

  def artist_name=(name)
    artists = Artist.all.select {|artist| artist.name == name}
    puts artists
    # @artist = artists.empty? ? Artist.new(name) : artists.first
  end

end
