class Company < ApplicationRecord

has_many :owner_owns, foreign_key: :owned_id , class_name: "Property"
has_many :asset_belongs, foreign_key: :owner_id, class_name: "Property"

has_many :assets, through: :asset_belongs, source: :owner
has_many :owners, through: :owner_owns, source: :asset


end
