class Team < ApplicationRecord
    has_many :staffs,  dependent: :destroy
    accepts_nested_attributes_for :staffs, allow_destroy: true
end
