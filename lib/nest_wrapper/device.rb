module NestWrapper
  class Device
    attr_accessor :name, :zip, :country. :state

    def initialize(status)
      self.name         = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['name']
      self.zip          = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['postal_code']
      self.country_code = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['country_code']

      self.state = NestWrapper::State.new(status)
    end
  end
end
