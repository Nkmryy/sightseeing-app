class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_places
  has_many :places, through: :trip_places
  has_many_attached :photos, dependent: :destroy
  has_many :comments, dependent: :destroy

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

  validate :validates_photos

  private

  def validates_photos
    photos.each do |photo|
      if !photo.blob.content_type.in?(%('image/jpeg image/png'))
        errors.add(:avatar, 'ファイルが対応している画像データではありません')
      end
    end
    if photos.length > 4
      errors.add(:photos, "は4枚以内にしてください")
    end
  end
end
