class Patient

  @@all = []

  attr_accessor :doctor, :appointment
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self

  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
      Appointment.all.select {|appt| appt.patient ==self}
  end


  def doctors
      Appointment.all.map do |appointments|
        if appointments.patient == self
          appointments.doctor
        end
      end
  end

end
