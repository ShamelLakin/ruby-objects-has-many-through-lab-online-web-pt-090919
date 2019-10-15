class Patient 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def appointments
    Appointment.all.select{|appointments| appointments.patient == self}
  end 
  
  
  def new_appointment(doctor, date)
     Appointment.new(date, doctor, self)
  end
  
  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end 
  
end 