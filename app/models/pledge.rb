class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :dollar_amount, presence: true
  validate :owner_cannot_back_own_project

  def owner_cannot_back_own_project
    if self.user == project.owner
      errors.add(:user, 'Error')
    end
  end

end
