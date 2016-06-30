class Content < ActiveRecord::Base
  belongs_to :order

  mount_uploader :file_path, FileUploader
end
