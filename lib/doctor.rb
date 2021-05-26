class Doctor
attr_reader :attributes

  def initialize(attributes = {})
    @attributes = attributes
  end

  def name
    @attributes[:name]
  end

  def specialty
    @attributes[:specialty]
  end

  def education
    @attributes[:education]
  end

  def salary
    @attributes[:salary]
  end

end
