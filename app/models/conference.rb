class Conference < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :time, presence: true
end
