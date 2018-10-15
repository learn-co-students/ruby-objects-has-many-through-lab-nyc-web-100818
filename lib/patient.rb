class Patient

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appt_object|
      appt_object.patient == self
    end
  end

  def doctors
    appointments.map do |appt_object|
      appt_object.doctor
    end
  end

  def self.all
    @@all
  end
end # end of Patient class
