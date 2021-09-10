
require_relative 'player'
class Team
    attr_accessor :name, :players
    def initialize name
        @name = name
        @players = Array.new
    end

    def createplayer firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points
        player = Player.new firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points
        @players.push(player)
        @players
    end
end
