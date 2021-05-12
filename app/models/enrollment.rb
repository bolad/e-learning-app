class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :user

  validates :user, :course, presence: true

  validates_uniqueness_of :user_id, scope: :course_id #user can't be subscribed to the same course twice
  validates_uniqueness_of :course_id, scope: :user_id #course can't be subscribed to by the same user twice

  validate :cant_subscribe_to_own_course 

  def to_s
    user.to_s + " " + course.to_s
  end

  protected
  def cant_subscribe_to_own_course
    if self.new_record?
      if user_id == course.user_id
        errors.add(:base, "You cannot enrol to your own course")
      end
    end
  end
end
