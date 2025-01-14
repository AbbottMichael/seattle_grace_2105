require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  describe 'Instantiation' do
    it 'exists' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace).to be_an_instance_of(Hospital)
    end

    it 'has readable attributes' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.name).to eq("Seattle Grace")
      expect(seattle_grace.cheif_surgery).to eq("Richard Webber")
      expect(seattle_grace.doctors).to eq([meredith,alex])
    end
  end

  describe 'methods' do
    it 'returns the sum of doctor salaries' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.total_salary).to eq(190_000)
    end
  end
end
