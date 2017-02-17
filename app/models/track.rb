# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Track < ActiveRecord::Base

  validates :name, presence: true

  belongs_to :album

  def band
    album.band
  end

end
