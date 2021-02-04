class Doctor < ApplicationRecord

    has_many :appointments
    belongs_to :city, optional: true
    has_many :patients, through: :appointments
    has_many :specialties, through: :jointure_spes
    
end
