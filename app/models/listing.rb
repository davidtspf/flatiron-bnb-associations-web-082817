class Listing < ActiveRecord::Base

  belongs_to :host, :class_name => "User"
  belongs_to :neighborhood

  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
  has_many :trips

end

# class Artist
#   has_many :songs, :class_name => 'Song', foreign_key: 'artist_id'
#
#   def songs
#     'SELECT * FROM _songs_ WHERE songs._artist_id_ = self.id'
#   end
# end
#
# class Song
#   belongs_to :artist

    # def artist
    #   'SELECT * from artists where artists.id = self.artist_id'
    # end
# end
