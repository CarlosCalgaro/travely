class Stablishment < ApplicationRecord
  
  belongs_to :company_user, class_name: "CompanyUser", foreign_key: "user_id"


  alias_method :user, :company_user
end
