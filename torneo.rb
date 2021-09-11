require_relative 'player'
require_relative 'team'

class Torneo
    attr_accessor :teams,:players
    def initialize 
        @players = Array.new
        @teams = Array.new
    end
   
    def createplayer (firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points, equipo)
        player = Player.new firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points, equipo
        @players.push(player)
        @players
    end

    def searchplayer(dni) 
        for player in @players
          if player.dni == dni
           puts player 
          end
        end
        puts "DNI NO ENCONTRADO"
    end 

end

torneo = Torneo.new
torneo.createplayer("Luis", "Rivero", "17772329", "0001",34,"black", 3, 3, 1, 13, "EqA" )

encontrar= torneo.searchplayer("17772329")