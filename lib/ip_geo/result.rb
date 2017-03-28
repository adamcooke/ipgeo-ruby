module IPGeo
  class Result

    def initialize(hash)
      @hash = hash
    end

    def country
      @hash['country']
    end

    def country_name
      @hash['country_name']
    end

    def city
      @hash['city']
    end

    def latitude
      @hash['latitude']
    end

    def longitude
      @hash['longitude']
    end

    def geoname_id
      @hash['geoname_id']
    end

  end
end
