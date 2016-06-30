class Order < ActiveRecord::Base
  include EmptyDetection

  belongs_to :user
  has_one :product
  has_one :content
  has_many :message

  mount_uploader :requirement_file_path, FileUploader
end
