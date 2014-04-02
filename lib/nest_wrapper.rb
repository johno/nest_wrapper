require 'nest_thermostat'

require 'nest_wrapper/version'
require 'nest_wrapper/device'

module NestWrapper
  
  class << self
    attr_accessor :nest, :status
  end

  def self.login(email, password)
    self.nest = NestThermostat::Nest.new({ email: email, password: password })
  end

  def self.set_status
    self.status = nest.status if nest
  end
end
