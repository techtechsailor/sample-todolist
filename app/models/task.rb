class Task < ApplicationRecord
  before_create :not_completed
  validates :title, presence: true, length: {maximum: 20}
  validates :description, presence: false, length: {maximum: 50}
  validates :completed, inclusion: { in: [true, false] }
  
  private
    #新規作成時はデフォルトでfalse
    def not_completed
      
    end

end
