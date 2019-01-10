class Staff < ApplicationRecord
    belongs_to :team
    has_many :staff_energies
    validates :family_name, presence: true, length: { maximum: 30 }
    validates :first_name, presence: true, length: { maximum: 30 }
    validates :gender, presence: true 
    validates :birthday, presence: true 

end
