module GaEvents
  Event = Struct.new(:category, :action, :label, :value) do
    def initialize(category, action, label = nil, value = nil)
      super
      GaEvents::List << self
    end

    def to_s
      [category, action, label, value].join('|')
    end
  end
end

