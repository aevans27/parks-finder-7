class Park
  attr_reader :id, :name, :description, :directions, :hours

  def initialize(data)
    @id = data[:id]
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @hours = data[:operatingHours].first[:standardHours][:wednesday]
  end
end