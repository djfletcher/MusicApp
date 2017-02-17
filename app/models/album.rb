# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer
#  style      :string
#

class Album < ActiveRecord::Base

  validates :name, presence: true
  validates :style, inclusion: { in: ["Studio", "Live"] }

  belongs_to :band

  has_many :tracks, dependent: :destroy


end
