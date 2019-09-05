class Buycomment < ApplicationRecord
  belongs_to :user
  belongs_to :buy
  validates :buybody, presence: true, allow_blank: false
end
