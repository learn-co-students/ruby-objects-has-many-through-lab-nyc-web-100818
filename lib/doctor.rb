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

# instantiates a new Appointment with patient, self (current instance of Doctor), and date passed in as arguments
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

# iterates through whole of Appointment (Appointment.all, @@all within Appointment class)
# using .select return a new array with all elements that satisfy appointment.doctor == self (current instance of Doctor)
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

# calling on #appointments defined above, iterates through the array that was returned via #appointments
# call #patient on that array , this will return all the patients associated with the current instance of doctor
# Hence, "has many patients"
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
