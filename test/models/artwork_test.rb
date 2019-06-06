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

require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
