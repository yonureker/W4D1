class Artwork < ApplicationRecord
  has_many :artwork_shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
end