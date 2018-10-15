# JOIN TABLE
# Appointments belong_to doctors and to patients

class Appointment
  # need an attr_accessor for doctor and patient since it belongs_to both of those
  attr_accessor :doctor, :patient, :date


  @@all = []

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end


  def self.all
    @@all
  end



end # end of Apoointment class
