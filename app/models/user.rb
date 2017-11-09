class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
     
  has_one :info
  has_many :posts
  
  before_create :set_default_info
        
  private
  def set_default_info
    self.info = Info.new()
  end
  
end
