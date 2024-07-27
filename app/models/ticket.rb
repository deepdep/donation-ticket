class Ticket < ApplicationRecord
  belongs_to :user

  scope :unused, -> { where(used: false) }

  def use!
    update! used: true
  end
end
