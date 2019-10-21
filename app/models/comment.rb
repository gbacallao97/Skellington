class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email

  RATINGS = {
    'one skull': '1_skull',
    'two skulls': '2_skulls',
    'three skulls': '3_skulls',
    'four skulls': '4_skulls',
    'five skulls': '5_skulls'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
      NotificationMailer.comment_added(self).deliver_now
  end
end

