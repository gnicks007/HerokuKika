class Patient < ActiveRecord::Base

  # insert validations for the patient model here
  #validates :email, uniqueness: true
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :DOB, presence: true
  validates :gender, presence: true
  validates :age, presence: true, numericality: true
  validates :home_address, presence: true

end
