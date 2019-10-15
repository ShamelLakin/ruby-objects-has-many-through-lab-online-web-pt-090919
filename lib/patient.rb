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
    Appointment.all.select{|appointments| appointments.doctor == self}
  end 
  
  
  def new_appointment(doctor, date)
     Appointment.new(date, doctor, self)
  end
  
  
end 