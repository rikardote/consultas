class Empleado < ActiveRecord::Base
  validates :num_empleado, :uniqueness => true, length: { maximum: 6 }
  validates_numericality_of :num_empleado, on: :create, :message => "debe ser numerico"
  validates :nom_empleado, presence: true, length: { maximum: 30 }
  validates :ip, presence: true, :uniqueness => true, 
            :format => { :with => Resolv::IPv4::Regex, :message => "Formato no valido"},
            length: { maximum: 16 }
  validates :mac_address, presence: true, :uniqueness => true, length: { maximum: 40 }
  validates :departamento, presence: true, length: { maximum: 60 }

  def self.search(query)
    where("num_empleado like ?", "%#{query}%") 
  end

end
