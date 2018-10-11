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

  #appointments has many appointments
  def appointments
    @appointments
  end

  #patients   has many patients, through appointments

 def patients
   my_appointments = Appointment.all.select do |appointment| appointment.doctor == self
   end
   my_appointments.map do |appointments| appointments.patient
   end
 end
end #end of Doctor class
