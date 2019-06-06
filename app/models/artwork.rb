# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  artist_id  :bigint
#  title      :string
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  belongs_to :artist
end
