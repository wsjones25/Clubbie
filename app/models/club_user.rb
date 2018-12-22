class ClubUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_one :club

  validates_presence_of :first_name, :last_name

  def initials
  	s1 = self.first_name[0]
  	s2 = self.last_name[0]
  	return s1 + s2
  end

  def fullname
    n1 = self.first_name
    n2 = self.last_name
    return n1 + " " + n2
  end
end
