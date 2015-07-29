class ProfileOption < ActiveRecord::Base
  belongs_to :profile
  belongs_to :option
end
