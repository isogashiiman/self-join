class Property < ApplicationRecord


belongs_to :owner, class_name: "Company"

belongs_to :asset, class_name: "Company"


end
