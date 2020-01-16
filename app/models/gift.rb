class Gift < ApplicationRecord
  belongs_to :group
  

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
