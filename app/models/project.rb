class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges
  has_many :backers, through: :pledges, source: :user
  belongs_to :owner, class_name: 'User'

  validates :title, :description, :goal, :start_date, :end_date, presence: true

  def time_left
    sec = (end_date - Time.current)
    days = (sec / 86400)
    return days.round(2)
  end

end
