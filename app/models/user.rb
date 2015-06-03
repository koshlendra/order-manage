
class User < ActiveRecord::Base
  rolify
paginates_per 10
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable ,:lockable
 
  after_save :employee

 def employee
   self.add_role "employee"
 end

  def role?( role ) 
    !roles.find_by_name( role.to_s.camelize ).nil?
  end 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   mount_uploader :avatar, AvatarUploader
  validates :first_name, :last_name,:city,:address,:phone,:pincode ,presence: true
validates :pincode , :phone ,numericality: true
            validates :phone ,  length: { is: 10 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
