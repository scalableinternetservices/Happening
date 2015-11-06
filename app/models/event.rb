class Event < ActiveRecord::Base
  belongs_to :user
  validates :name, :location, :description, :host, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
