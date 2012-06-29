class User < ActiveRecord::Base
    after_create :save_lender
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable
    
    validates_presence_of :first_name, :last_name
    validates_uniqueness_of :email, :case_sensitive => false
    
    has_one :lender, :autosave => true, :dependent => :destroy  
    
    accepts_nested_attributes_for :lender, :allow_destroy => true


  # Setup accessible (or protected) attributes for your model
    attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :uid, :lender_attributes
    
    def save_lender
        lender do |lend|
            lend.save(false)
        end
    end
    
end
