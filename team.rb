
require_relative 'player'

class Team
    attr_accessor :name,:codigo , :players
    def initialize name, codigo
        @name = name
        @codigo = codigo
        @players = Array.new
    end

end
