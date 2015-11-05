class Event < ActiveRecord::Base
  validates :name, :location, :description, :host, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  belongs_to :user
end
