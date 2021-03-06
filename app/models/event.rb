class Event < ActiveRecord::Base
  belongs_to :user
  validate :end_gt_start
  validates :user_id, presence: true
  validates :name, :location, :description, :host, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :passive_attendances, class_name: "Attendance",
                                 foreign_key: "occasion_id",
                                 dependent: :destroy
  has_many :guests, through: :passive_attendances, source: :guest

  def end_gt_start
    if timestart > timeend
      errors.add(:timeend, "can't be before the event starts")
    end
  end
end
