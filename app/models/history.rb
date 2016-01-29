class History < ActiveRecord::Base
  validates :content, presence: true, length: { maximum: 255, message: 'should less than 255 characters' }
  UNIT = ["&deg;C", "&deg;F"]
end
