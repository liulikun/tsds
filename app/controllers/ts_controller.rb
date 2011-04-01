class TsController < ApplicationController

  respond_to :html, :json

  def show
    address = params['address']
    if address
      location = geo_location(address)
      train = TrainStation.calculate_nearest_station(location['lat'], location['lng'])
      cbd = TrainStation.cbd_distance(location['lat'], location['lng'])
      
      respond_with(@result = "#{params['callback']}({train:'#{train}',cbd:'#{cbd}'})")
    end
  end

  def create
    address = params['ts']['address']
    location = geo_location(address)
    @train = TrainStation.calculate_nearest_station(location['lat'], location['lng'])
    @cbd = TrainStation.cbd_distance(location['lat'], location['lng'])

    render :result
  end

  def geo_location(address)
    url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(address) + '&sensor=false'
    resp = Net::HTTP.get_response(URI.parse(url))
    result = JSON.parse(resp.body)
    p "GEOCODING=#{result}"

    result['results'][0]['geometry']['location']

  end

end
