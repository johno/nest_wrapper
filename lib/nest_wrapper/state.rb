module NestWrapper
  class State
    attr_accessor :temperature, :leaf, :online

    def initialize(status)
      self.online = NestWrapper.nest.status['track'].to_a.flatten[1]['online']
    end
  end
end
