class Result < ApplicationRecord

  belongs_to :user
  has_many   :comments
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :first_length
  end
  
end
