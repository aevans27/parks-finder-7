class ParkService
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nps.gov") do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.nps[:key]
    end
  end

  def get_state_parks(state)
    get_url("/api/v1/parks?stateCode=#{state}")
  end
end