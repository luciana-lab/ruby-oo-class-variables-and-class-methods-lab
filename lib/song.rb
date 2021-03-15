#Couldn't do it this lab. Used help of https://medium.com/@Johnson_Joseph/learning-class-variables-and-methods-2ba8b36488e6
class Song
    attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.all
        @@all
    end

    def self.count
    @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    #Created an instance variable genre_count = { } to an empty hash. 
    #The empty hash will be the starting point for our hash and will be the key/value of the stored genre and the number of songs. 
    #Next @@genres (references the stored genres in the array.) .each will iterate over each genre 
    #If a genre is true, it doesn’t match any genre in the hash it moves on to the next line and add 1 to a new key
    #Else if a genre is false it match a genre it will skip the next line and move on to the next line and increment the value by 1 in the matching key. 
    #Return genre_count to get the entire hash key/value.
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
        end
        artist_count
    end
end