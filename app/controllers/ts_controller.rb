class TsController < ApplicationController

  def new
    p '========='
    p params

    render :new and return unless params['ts']

    address = params['ts']['address']

    url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(address) + '&sensor=false'
    resp = Net::HTTP.get_response(URI.parse(url))
    result = JSON.parse(resp.body)
    lat = result['results'][0]['geometry']['location']['lat']
    long = result['results'][0]['geometry']['location']['lng']

#    p "#{lat},#{long}"

    direct_distances = {}
    TrainStation::TM.each do |station, geocode|
      slat, slong = geocode.split(',')


      d = (slat.to_f - lat)**2 + (slong.to_f - long)**2
#      p "#{station}=#{d}"
      direct_distances[station] = d

#      {tooltipHtml:" (3.6\x26#160;km / 6 mins)",polylines:[
    end

    shortest_walk_distance = 9999999
    nearest_station = ''

    direct_distances.sort { |a, b| a[1] <=> b[1] }[0..1].each { |elem|
      u = "http://maps.google.com.au/maps?gl=au&dirflg=w&output=dragdir&saddr=#{lat},#{long}&daddr=#{TrainStation::TM[elem[0]]}"
      resp = Net::HTTP.get_response(URI.parse(u))

      html = resp.body


      html =~ /.*(\(([0-9\.]+).*;(.*)\/.*\)).*/
      candidate = "#{elem[0]} =~ #{$2.strip} #{$3.strip}"
#      puts candidate

      candidate_distance = $3.strip == 'km' ? ($2.strip.to_f * 1000).to_i : $2.strip.to_i

      if candidate_distance < shortest_walk_distance
        shortest_walk_distance = candidate_distance
        nearest_station = candidate
      end
    }

    puts nearest_station

    @result = nearest_station
    
    render :result
  end

end
