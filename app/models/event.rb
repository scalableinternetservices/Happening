class Event < ActiveRecord::Base
  belongs_to :user
  validates :name, :location, :description, :host, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  has_many :passive_attendances, class_name: "Attendances",
                                 foreign_key: "occasion_id",
                                 dependent: :destroy
  has_many :guests, through: :passive_attendances, source: :guest
end
