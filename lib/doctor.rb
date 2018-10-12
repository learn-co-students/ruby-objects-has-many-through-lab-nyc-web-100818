class Doctor 
  
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
  end 
  
  def self.all 
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 
  
  def appointments
    @appointments
  end

  def patients
    my_appts = Appointment.all.select { |appt| appt.doctor == self }
    my_appts.map{ |appt| appt.patient }
  end

end 