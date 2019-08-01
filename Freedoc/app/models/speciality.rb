class Speciality < ApplicationRecord
	has_many :majors
	has_many :doctors, through: :majors
end
