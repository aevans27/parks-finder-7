class ParksFacade
  def get_parks
    service = ParkService.new
    data = service.get_parks[:data]
    @results = data.map do |park_data|
      Park.new(park_data)
    end
  end

  def get_state_parks(state)
    service = ParkService.new
    data = service.get_state_parks(state)[:data]
    @results = data.map do |park_data|
      Park.new(park_data)
    end
  end
end