class Log < ActiveRecord::Base
  belongs_to :user 
  validates :log_day, presence: true, uniqueness: true
  validates :motivation, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :user_id, presence: true

end
