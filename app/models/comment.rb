class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
end

  RATINGS = {
    'one skull': '1_skull',
    'two skulls': '2_skulls',
    'three skulls': '3_skulls',
    'four skulls': '4_skulls',
    'five skulls': '5_skulls'
  }
end

