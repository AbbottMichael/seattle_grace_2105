require './lib/doctor'

RSpec.describe Doctor do
  describe 'Instantiation' do
    it 'exists' do
      doctor = Doctor.new
# require'pry';binding.pry
      expect(doctor).to be_an_instance_of(Doctor)
    end

    it 'accepts attributes' do
      doctor = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      # require'pry';binding.pry
      expect(doctor.attributes).to eq({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    end
  end
end
