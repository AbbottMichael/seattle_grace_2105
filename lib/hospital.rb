class Hospital
  attr_reader :name, :cheif_surgery, :doctors

  def initialize(name, cheif_surgery, doctors)
    @name = name
    @cheif_surgery = cheif_surgery
    @doctors = doctors
  end

end
