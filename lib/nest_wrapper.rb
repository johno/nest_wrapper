require 'nest_thermostat'

require 'nest_wrapper/version'
require 'nest_wrapper/device'
require 'nest_wrapper/state'

module NestWrapper
  
  class << self
    attr_accessor :nest, :status, :device
  end

  def self.login(email, password)
    self.nest = NestThermostat::Nest.new({ email: email, password: password })

    set_status

    self.device = NestWrapper::Device.new(status)
  end

  def self.set_status
    self.status = nest.status if nest
  end
end
