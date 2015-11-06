class Attendance < ActiveRecord::Base
  belongs_to :guest, class_name: "User"
  belongs_to :occasion, class_name: "Event"
  validates :guest_id, presence: true
  validates :occasion_id, presence: true
end
