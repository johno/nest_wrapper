module NestWrapper
  class State
    attr_accessor :temp, :curr_temp, :leaf, :online, :away, :humidity, :target_temp_at

    def initialize(status)
      self.online         = NestWrapper.nest.status['track'].to_a.flatten[1]['online']
      self.away           = NestWrapper.nest.away
      self.leaf           = NestWrapper.nest.leaf
      self.temp           = NestWrapper.nest.temp
      self.curr_temp      = NestWrapper.nest.current_temp
      self.humidity       = NestWrapper.nest.humidity
      self.target_temp_at = NestWrapper.nest.target_temp_at
    end
  end
end
