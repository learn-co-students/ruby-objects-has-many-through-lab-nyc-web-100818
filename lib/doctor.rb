class Doctor

  @@all = []

  attr_accessor :patient, :appointment
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self

  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end

  def patients
      Appointment.all.map do |appointments|
        if appointments.doctor == self
          appointments.patient
        end
      end
  end

end
