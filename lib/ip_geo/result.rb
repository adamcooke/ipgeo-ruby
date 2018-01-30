module IPGeo
  class Result

    EU_COUNTRY_CODES = ["AT", "BE", "BG", "HR", "CY", "CZ", "DK", "EE", "FI",
      "FR", "DE", "GB", "GR", "HU", "IE", "IT", "LV", "LT", "LU", "MT", "NL",
      "PL", "PT", "RO", "SK", "SI", "ES", "SE"].freeze

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

    def eu?
      EU_COUNTRY_CODES.include?(country)
    end

  end
end
