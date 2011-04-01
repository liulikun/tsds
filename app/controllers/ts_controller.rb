class TsController < ApplicationController

  def create
    address = params['ts']['address']

    url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(address) + '&sensor=false'
    resp = Net::HTTP.get_response(URI.parse(url))
    result = JSON.parse(resp.body)
    p "GEOCODING=#{result}"

    location = result['results'][0]['geometry']['location']

    @result = TrainStation.calculate_nearest_station(location['lat'], location['lng'])

    render :result
  end

end
