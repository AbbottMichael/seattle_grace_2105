require './lib/doctor'

RSpec.describe Doctor do
  describe 'Instantiation' do
    it 'exists' do
      meredith = Doctor.new
# require'pry';binding.pry
      expect(meredith).to be_an_instance_of(Doctor)
    end

    it 'accepts attributes' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

      expect(meredith.attributes).to eq({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    end

    describe 'methods' do
      it 'returns attribute key values' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

      expect(meredith.name).to eq("Meredith Grey")
      expect(meredith.specialty).to eq("General Surgery")
      expect(meredith.education).to eq("Harvard University")
      expect(meredith.salary).to eq(100_000)
      end
    end
  end
end
