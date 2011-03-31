require 'spec_helper'

describe TrainStation do
  it 'should do' do
    office = Geokit::Geocoders::GoogleGeocoder.geocode('Southern Cross Station, Melbourne VIC 3000, Australia')
    office = Geokit::Geocoders::GoogleGeocoder.geocode('Melbourne Central Station, Melbourne VIC 3000, Australia')
    p office
    p office.ll

    st = Geokit::Geocoders::GoogleGeocoder.geocode('Richmond Station, Richmond victoria')
    p st
    p st.ll

    distance=office.distance_from(st, :units=>:kms)
    p distance
  end

  it 'geocode all locations' do

    TrainStation::STATIONS.sort.uniq.each do |station|
      resp = Net::HTTP.get_response(URI.parse('http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(station + ' Station, VIC, Australia') + '&sensor=false'))

      result = JSON.parse(resp.body)

      found = false

      result['results'].each do |location|
        if (location['types'].include?('transit_station') || location['types'].include?('establishment')) &&
            location['formatted_address'] =~ /^#{station}.*VIC.*Australia/

          found = true
          puts "'#{station}' => '#{location['geometry']['location']['lat']},#{location['geometry']['location']['lng']}',"
          break
        end
      end

      puts '==========' + station unless found

    end
  end

  it 'loop through all stations' do
    address = '678 Victoria Street, Richmond VIC 3121, Australia'
    url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' + URI.escape(address) + '&sensor=false'
    resp = Net::HTTP.get_response(URI.parse(url))

    result = JSON.parse(resp.body)
    latlong = "#{result['results'][0]['geometry']['location']['lat']},#{result['results'][0]['geometry']['location']['lng']}"

    distance = {}
    TrainStation::TM.each do |station, geocode|
      u = "http://maps.google.com.au/maps?gl=au&output=dragdir&saddr=#{latlong}&daddr=#{geocode}"
      resp = Net::HTTP.get_response(URI.parse(u))

      html = resp.body

      html =~ /.*(\(([0-9\.]+).*;(.*)\/.*\)).*/
      puts "#{station}    = #{$2} #{$3}"
      distance[station] = "#{$2} #{$3}"

#      {tooltipHtml:" (3.6\x26#160;km / 6 mins)",polylines:[
    end

    distance.each do |station, d|
      puts "#{station}    = #{d}"
    end
  end

  it 'calculate nearest station' do
#    address = '333 Collins Street, Melbourne VIC 3000 Australia'
    address = 'Breathtaker Rd, Mt Buller, Victoria, Australia'

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

    shortest_walk_distance = 9999999999
    nearest_station = ''

    direct_distances.sort { |a, b| a[1] <=> b[1] }[0..9].each { |elem|
      u = "http://maps.google.com.au/maps?gl=au&dirflg=w&output=dragdir&saddr=#{lat},#{long}&daddr=#{TrainStation::TM[elem[0]]}"
      resp = Net::HTTP.get_response(URI.parse(u))

      html = resp.body


      html =~ /.*(\(([0-9\.]+).*;(.*)\/.*\)).*/
      candidate = "#{elem[0]}   = #{$2} #{$3}"
#      puts candidate

      candidate_distance = $3.strip == 'km' ? ($2.strip.to_f * 1000).to_i : $2.strip.to_i

      if candidate_distance < shortest_walk_distance
        shortest_walk_distance = candidate_distance
        nearest_station = candidate
      end
    }

    puts nearest_station

  end
end

#
#http://maps.google.com.au/maps?gl=au&output=dragdir&saddr=-37.8121912,145.0140166&daddr=-37.8239063,144.9897346

#http://maps.googleapis.com/maps/api/geocode/json?address=Flinders+Street,+Melbourne+VIC+3000,+Australia&sensor=false
