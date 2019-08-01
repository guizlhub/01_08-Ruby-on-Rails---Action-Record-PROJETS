class Doctor < ApplicationRecord
	has_many :appointments
	has_many :majors
	has_many :patients, through: :appointments
	has_many :specialities, through: :majors
end
