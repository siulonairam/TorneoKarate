class Team
    attr_accessor :name
    def initialize name
        @name = name
        @players = Array.new
    end
end
