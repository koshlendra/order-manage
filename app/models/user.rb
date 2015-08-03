
class User < ActiveRecord::Base
  rolify
 paginates_per 10
 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable ,:lockable
 
  after_save :employee
  has_many :orders
  def employee
    self.add_role "employee"
  end

  def role?( role )
  byebug 
    !roles.find_by_name( role.to_s.camelize ).nil?
  end 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  validates :first_name, :last_name,:email,presence: true , :on => :create
  validates :pincode , :phone ,numericality: true, :on => :create
  validates :phone ,  length: { is: 10 } , :on => :create
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
def self.create_with_omniauth(auth)
    data = auth.info
    case auth["provider"]
    when "twitter"
      # User is created from twitter account
      user = User.new
      user.first_name = data.nickname
    when "facebook", "google"
      # Special Case: User coming from FB, but is already signed up with same email
      if user = User.find_by_email(data.email)
        user.provider = auth["provider"]
        user.save(:validate => false)
        return user
      else
      # User is created from social account
        user = User.new
        user.email = data.email
        user.first_name = user.email.split("@").first
      end
    when "auth0"
      if user = User.find_by_email(data.email)
        user.provider = auth["provider"]
        user.first_name = data.nickname
        if user.save(:validate => false)
          user.user_signed_up if user.sign_in_count <= 1
        end  
        return user
      else
        user = User.new
        user.email = data.email if data.email.present?
        user.first_name = data.nickname
        user.last_name = data.last_name
      end
    end
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.password = Devise.friendly_token[0,20]
    user.save(:validate => false)
    return user
  end
end
