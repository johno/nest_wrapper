module NestWrapper
  class Device
    attr_accessor :name

    def initialize(status)
      self.name = NestWrapper.nest.status['structure'][NestWrapper.nest.status['structure'].keys.first]['name']
    end
  end
end
