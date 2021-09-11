
require_relative 'player'

class Team
    attr_accessor :name, :players, :codigo
    def initialize name, codigo
        @name = name
        @players = Array.new
        @codigo = codigo
    end

end
