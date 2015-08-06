class Contact < ActiveRecord::Base
  belongs_to :profile
  belongs_to :option
  belongs_to :canalingreso

  has_secure_password

end
