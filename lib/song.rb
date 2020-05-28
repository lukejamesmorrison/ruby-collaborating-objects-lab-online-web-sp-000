class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    # @@all << self
  end

  def self.all
    @@all
  end

  def new_by_filename(filename)
    file_parts = filename.split(' - '); #0 - artist, 1 - title, 3 - genre.extension
    song = self.new(file_parts[1])
    puts song.artist

    # self.all << song
  end

  def artist_name(name)
    artists = @@all.select {|artist| artist.name == name}
    if(artists.empty?)
      artist = Artist.new(name)
    else
      artist = artists.first
    end

    @artist = artist


    # ? self.new(name) : artists.first
  end

end
