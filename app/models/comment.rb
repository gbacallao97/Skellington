class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email

  RATINGS = {
    'One Skull': '1_skull',
    'Two Skulls': '2_skulls',
    'Three Skulls': '3_skulls',
    'Four Skulls': '4_skulls',
    'Five Skulls': '5_skulls'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
      NotificationMailer.comment_added(self).deliver_now
  end
end

