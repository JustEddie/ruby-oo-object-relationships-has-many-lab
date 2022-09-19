
class Artist

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end


    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(title)
        Song.new(title).artist = self
    end

    def self.all
        @@all
    end

    def self.song_count
        Song.all.count
    end
end

