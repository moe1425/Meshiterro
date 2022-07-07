class Favorite < ApplicationRecord

  belong_to :user
  belong_to :post_image

end
