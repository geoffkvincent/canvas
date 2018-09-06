class User < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments

  #@user.full_name
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
