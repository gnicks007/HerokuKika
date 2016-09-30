json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :DOB, :gender, :age, :home_address, :previous_address, :phone_number, :email, :receive_txt
  json.url patient_url(patient, format: :json)
end
