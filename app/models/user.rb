class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  
  after_create :assing_default_role

  def assing_default_role
    self.add_role(:user) if self.role.blank?
  end
  

end
