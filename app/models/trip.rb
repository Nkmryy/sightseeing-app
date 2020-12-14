class Trip < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :attraction
  belongs_to :evaluation

  with_options presence: true do
    validates :title
    validates :impressions
    validates :photos
    validates :attraction_id, numericality: { other_than: 0, message: "can't be blank" }
    validates :evaluation_id
  end
end
