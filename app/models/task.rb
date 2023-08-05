class Task < ApplicationRecord

  validates :title, presence: true, length: {maximum: 20}
  validates :description, presence: false, length: {maximum: 50}
  validates :completed, inclusion: { in: [true, false] }
  
end
