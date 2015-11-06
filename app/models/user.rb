class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events, dependent: :destroy
  has_many :active_attendances, class_name: "Attendance",
                                foreign_key: "guest_id",
                                dependent: :destroy
  has_many :occasions, through: :active_attendances, source: :occasion

  def attend(event)
    active_attendances.create(occasion_id: event.id)
  end

  def unattend(event)
    active_attendances.find_by(occasion_id: event.id).destroy
  end

  def attending?(event)
    occasions.include?(event)
  end
end
