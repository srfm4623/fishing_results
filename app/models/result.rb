class Result < ApplicationRecord

  belongs_to :user
  has_many   :comments
  has_one_attached :image

  with_options presence: true do
    validates :first_length
    validates :area
    validates :image
  end
  
end
