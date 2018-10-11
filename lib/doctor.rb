class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    @appointments
  end

  def patients
    my_appts = Appointment.all.select { |appointment| appointment.doctor == self }
    my_appts.map{ |apt| apt.patient }
  end

end
