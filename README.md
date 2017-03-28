# IPGeo Ruby Client

A client for looking up IP locations from a [IPGeo Server](https://github.com/adamcooke/ipgeo-server).

## Usage

```ruby
client = IPGeo::Client.new('ipgeo.domain.com')
if result = client.lookup('185.22.208.2')
  result.country        #=> "GB"
  result.country_name   #=> "United Kingdom"
  result.city           #=> "Poole"
  result.latitude       #=> 51.4964
  result.longitude      #=> -0.1224
  result.geoname_id     #=> 2635167
end
```
