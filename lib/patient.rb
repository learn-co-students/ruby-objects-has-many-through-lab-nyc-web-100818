
class Patient

  attr_reader :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end 

  def doctors
    appointments.map {|appointment| appointment.doctor}
  end

  def self.all
    @@all
  end


end