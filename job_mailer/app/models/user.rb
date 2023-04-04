class User < ApplicationRecord
  has_many :companies,dependent: :destroy
  has_many :projects,dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def birthday_today?
    self.birthdate && self.birthdate.month == Date.today.month && self.birthdate.day == Date.today.day
  end
end
