module NestWrapper
  class State
    attr_accessor :temperature, :leaf, :online, :away

    def initialize(status)
      self.online = NestWrapper.nest.status['track'].to_a.flatten[1]['online']
      self.away   = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['away']
    end
  end
end
