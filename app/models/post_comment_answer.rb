class PostCommentAnswer < ActiveRecord::Base
  belongs_to :post_comment
  belongs_to :contact
end
