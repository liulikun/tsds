class TsController < ApplicationController

  def create
    address = params['ts']['address']

    url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(address) + '&sensor=false'
    resp = Net::HTTP.get_response(URI.parse(url))
    result = JSON.parse(resp.body)
    p "GEOCODING=#{result}"

    location = result['results'][0]['geometry']['location']
    lat = location['lat']
    long = location['lng']

    direct_distances = calculate_direct_distances(lat, long)

    @result = calculate_nearest_station(direct_distances, lat, long)

    render :result
  end


  def calculate_direct_distances lat, long
    returning Hash.new do |result|
      TrainStation::TM.each do |station, geocode|
        slat, slong = geocode.split(',')
        distance = (slat.to_f - lat)**2 + (slong.to_f - long)**2
        result[station] = distance
      end
    end
  end

  def calculate_nearest_station direct_distances, lat, long
    shortest_walk_distance = 9999999
    nearest_station = ''

    direct_distances.sort { |a, b| a[1] <=> b[1] }[0..1].each { |elem|
      url = "http://maps.google.com.au/maps?gl=au&dirflg=w&output=dragdir&saddr=#{lat},#{long}&daddr=#{TrainStation::TM[elem[0]]}"
      resp = Net::HTTP.get_response(URI.parse(url))

      html = resp.body
      html =~ /.*(\(([0-9\.]+).*;(.*)\/.*\)).*/
      candidate = "#{elem[0]} =~ #{$2} #{$3}"

      candidate_distance = $3.strip == 'km' ? ($2.to_f * 1000).to_i : $2.to_i

      if candidate_distance < shortest_walk_distance
        shortest_walk_distance = candidate_distance
        nearest_station = candidate
      end
    }

    nearest_station
  end

end
