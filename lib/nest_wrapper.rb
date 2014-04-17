require 'nest_thermostat'

require 'nest_wrapper/version'
require 'nest_wrapper/device'
require 'nest_wrapper/state'

module NestWrapper
  
  class << self
    attr_accessor :nest, :status, :device
  end

  def self.login(email, password)
    self.nest   = NestThermostat::Nest.new({ email: email, password: password })
    self.device = NestWrapper::Device.new(status) if status
  end

  delegate :status, to: :nest
end
