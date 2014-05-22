module NestWrapper
  class Device
    attr_accessor :name, :zip, :country, :state, :config_data, :forecast

    def initialize(status)
      self.name        = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['name']
      self.zip         = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['postal_code']
      self.country     = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['country_code']
      self.config_data = NestWrapper.nest.status['device'][NestWrapper.nest.status['device'].keys.first]

      self.state    = NestWrapper::State.new(status)
      self.forecast = NestWrapper::Forecast.new(self)
    end
  end
end
