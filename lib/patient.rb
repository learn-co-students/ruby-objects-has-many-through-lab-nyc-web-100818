class Patient 
  
  attr_accessor :name, :appointments, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
  end 
  
  def self.all 
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 

  
  def doctors
    my_appts = Appointment.all.select { |appt| appt.patient == self }
    my_appts.map { |appt| appt.doctor }
  end 

end 