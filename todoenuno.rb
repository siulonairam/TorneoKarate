class Player
    attr_accessor :firtsname, :lastname, :dni, :code, :years, :color, :fightwin, :fightloss, :fighttie, :points, :equipo
    def initialize (firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points, equipo)
        @firtsname = firtsname
        @lastname = lastname
        @dni = dni
        @code = code
        @years = years
        @color = color
        @fightwin = fightwin
        @fightloss = fightloss
        @fighttie = fighttie
        @points = points
        @equipo = equipo
    end
end

class Team
    attr_accessor :name, :players, :codigo
    def initialize name, codigo
        @name = name
        @players = Array.new
      
    end

end

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
           return player 
          end
        end
        return false
    end 

    def datosplayer(player)
        if player == false
            puts "Jugador no Participa en el Torneo"
          return
        end
        puts "Jugador: #{player.firtsname}-#{player.lastname}* #{player.dni} *#{player.years} Años *#{player.code}* Cinta #{player.color}*#{player.years} años. Puntos: #{player.points}"   
    end

    def campeon()
        mayor=0
        ganador = false
        for player in @players
            if player.points > mayor
                mayor = player.points
                ganador = player
            end
        end
        return ganador
    end
end

torneo = Torneo.new
torneo.createplayer("Luis", "Rivero", "17772329", "0001",34,"black", 3, 3, 1, 13, "EqA" )
torneo.createplayer("Pedro", "Alfonzo", "17884000", "0002",36,"white", 4, 2, 1, 19, "EqB" )
torneo.createplayer("Juan", "Perez", "264244447", "0003",35,"green", 5, 1, 1, 23, "EqC" )
torneo.createplayer("Diego", "Rizquez", "18888888", "0004",33,"orange",3, 3, 1, 13, "EqD" )
torneo.createplayer("Enrique", "simi", "19999999", "0005",32,"Orange", 6, 0, 1, 27, "EqA" )
torneo.createplayer("Jose", "piñera", "20000000", "0006",30,"green", 3, 0, 4, 24, "EqB" )
torneo.createplayer("Richar", "rosas", "21000000", "0007",35,"white", 3, 3, 1, 13, "EqC" )
torneo.createplayer("Mario", "Reyes", "22000000", "0008",33,"black", 3, 3, 1, 13, "EqD" )
torneo.createplayer("nelson", "Rios", "23000000", "0009",24,"yellow", 7, 0, 0, 28, "EqA" )

encontrar = torneo.searchplayer("00888888")
torneo.datosplayer(encontrar)
puts "Campeon del Torneo"
champions =torneo.campeon()
torneo.datosplayer(champions)