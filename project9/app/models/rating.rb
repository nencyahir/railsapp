class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true
 

  default_scope { order(rating: :desc) }
end
