class Doctor
  attr_reader :name

  @@all = [] # keep track of all the doctor instances

  def initialize(name)
    @name = name

    @@all << self # push each new doctor instance into to @@all array
  end

  def new_appointment(patient, date)
    new_appt = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appt_object|
      appt_object.doctor == self
    end
  end

  def patients
    appointments.map do |appt|
      appt.patient
    end
  end

  def self.all
    @@all
  end

end # end of Doctor class
