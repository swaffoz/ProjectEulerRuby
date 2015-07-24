module ProjectEuler
  class Problem
    def initialize
    end
    
    def solve
      raise NotImplementedError.new("#{self.class.name}##{__method__} is not implemented.")
    end
    
    def self.descendants
      # Find all child classes
      ObjectSpace.each_object(Class).select { |some_class| some_class < self }
    end
  end
end