class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist 
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        histogram = Hash.new(0)
        @@artists.each do |artist|
        histogram[artist] += 1
      end
      histogram
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
sixty_nine_probs = Song.new("sixty_nine_probs", "Jay-Z", "rap")
six = Song.new("6 babies", "Jedida", "love")
nidaden = Song.new("nidaden big", "Jedida", "love")
sidadix = Song.new("sidadix dish", "Jedida", "love")
ten = Song.new("ten cats", "Britain", "rock")
twenty_days = Song.new("twenty_days", "Britain", "rock")
fifty_backs_dig = Song.new("fifty_backs_dig", "Britain", "rock")
gigs_sicks = Song.new("gigs_sicks", "Britain", "rock")
# puts ninety_nine_problems.name
# puts ninety_nine_problems.artist
# puts ninety_nine_problems.genre

puts Song.count
puts Song.genres
puts Song.artists
puts Song.genre_count
puts Song.artist_count
