class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments

  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    appointments.map {|a| a.patients}
  end
end
