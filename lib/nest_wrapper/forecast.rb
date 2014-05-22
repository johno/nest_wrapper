require 'barometer'

module NestWrapper
  class Forecast
    attr_accessor :device, :curr_temp, :highs, :lows, :weather, :barometer,
                  :weather_measurement, :starts_at, :ends_at

    def initialize(device)
      self.device              = device
      self.barometer           = Barometer.new(device.zip)
      self.weather_measurement = barometer.measure
      
      self.highs = weather_measurement.forecast.map { |w| w.high.f.to_i }
      self.lows  = weather_measurement.forecast.map { |w| w.low.f.to_i  }

      self.starts_at = weather_measurement.forecast[0].starts_at
      self.ends_at   = weather_measurement.forecast[-1].ends_at
    end
  end
end