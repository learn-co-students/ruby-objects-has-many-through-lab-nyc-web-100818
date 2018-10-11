class Appointment

attr_accessor :doctor, :date, :patient

@@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    doctor.appointments << self #this shovels all the instances of the appointments
    patient.appointments << self
  end


  def self.all
    @@all
  end








end
