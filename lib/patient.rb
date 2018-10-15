class Patient

attr_accessor :name, :doctor, :date


@@all = []
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end

def doctors
  appointments.map do |appointment|
    appointment.doctor
  end
end



end #end of Patient class

# #new_appointment
# given a doctor and date, creates a new appointment belonging to that patient
