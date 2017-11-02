class Product < ApplicationRecord
  include ImageUploader[:image]
  belongs_to :user, optional: true
  has_many :ratings
end
