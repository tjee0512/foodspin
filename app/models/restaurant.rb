class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :reviews

  validates :name, :address, :phone, presence: true
  validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
  message: "must start with http:// or https://" }
end
