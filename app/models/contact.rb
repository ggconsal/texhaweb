class Contact < ActiveRecord::Base
  belongs_to :profile
  belongs_to :option
  belongs_to :canalingreso

  has_many :post_comment_answers

  accepts_nested_attributes_for :post_comment_answers

  has_secure_password

end
