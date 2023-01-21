class User < ApplicationRecord
    validates :email, uniqueness: true
    has_secure_password
    has_one_attached :image

    def image_as_thumbnail
    image.variant(resize_to_limit: [150,150]).processed
    end

end
