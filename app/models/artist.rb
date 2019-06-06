# == Schema Information
#
# Table name: artists
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artist < ApplicationRecord

  has_many :artworks

  def to_s
    "#{first_name} #{last_name}"
  end
end
