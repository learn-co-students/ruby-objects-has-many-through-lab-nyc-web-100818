class Doctor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  # @appts = []
end

def self.all
  @@all
end

def new_appointment(patient, date)
  appointment = Appointment.new(date, patient, self)
  # @appts << appointment
end

def appointments
  Appointment.all.select do |appt|
    appt.doctor == self
  end
end

def patients
  Appointment.all.map do |appointment|
    appointment.patient
  end 
end

end
