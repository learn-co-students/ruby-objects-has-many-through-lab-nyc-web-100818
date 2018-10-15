class Doctor

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end
# #new_appointment
# given a date and a patient, creates a new appointment
def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end

def appointments
  Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

#has many patients, through appointments, checking through appointment instances and calling all the patients
def patients
  Appointment.all.map do |appointment|
    appointment.patient
  end
end
end #end of Doctor class
