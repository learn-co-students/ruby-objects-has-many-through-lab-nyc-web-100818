class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    my_appts = Appointment.all.select { |appointment| appointment.patient == self }
    my_appts.map{ |apt| apt.doctor }
  end

end
