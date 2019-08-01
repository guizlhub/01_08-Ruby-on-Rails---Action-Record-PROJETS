class AddInMajor < ActiveRecord::Migration[5.2]
  def change
  	add_reference :majors, :speciality, foreign_key: true
  	add_reference :majors, :doctor, foreign_key: true
  end
end
