class Paypaltransaction < ActiveRecord::Base
    attr_accessible :uid, :payKey, :amount
end
