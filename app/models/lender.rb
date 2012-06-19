class Lender < ActiveRecord::Base
    belongs_to :user
    attr_accessible :first_name, :last_name, :credit, :user_id, :exp, :luid, :class_type, :gender
    validates_presence_of :first_name, :last_name

end
