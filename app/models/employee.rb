class Employee < ApplicationRecord
    # for image validation........
    # validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
    # has_one_attached :avatar
    # has_one_attached :song
    # has_one_attached :pdf_file
     has_many_attached :multi_files
end
