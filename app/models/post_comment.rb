class PostComment < ActiveRecord::Base
  belongs_to :post
  belongs_to :contact
end
