class Patient

attr_accessor :name, :appointments

@@all = []

  def initialize(name)
    @appointments = []
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    my_appointments = Appointment.all.select do |appointment| appointment.patient == self
    end
    my_appointments.map do |appointments| appointments.doctor
    end
  end

end
