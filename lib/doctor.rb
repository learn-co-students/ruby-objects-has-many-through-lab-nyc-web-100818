# The Doctor model:
#
# The Doctor class needs a class variable @@all that begins as an empty array.
# The Doctor class needs a class method .all that lists each doctor in the class variable.
# A doctor should be initialized with a name and be saved in the @@all array.
# The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new appointment. That appointment should know that it belongs to the doctor
# The Doctor class needs an instance method, #appointments, that iterates through all appointments and finds those belonging to this doctor.
# The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.


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
