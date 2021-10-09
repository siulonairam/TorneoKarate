require_relative 'player'
require_relative 'team'

class Torneo
    attr_accessor :teams,:players
    def initialize 
        @players = Array.new
        @teams = Array.new
    end
   
    def ubicarteams(codigo)
        for team in @teams
          if team.codigo == codigo
            return equipo
          end
        end
        return nil
      end

    def createteams (nombre, codigo)
        team = ubicarteams(codigo)
            if team == nil
              team = Team.new(nombre, codigo)
              @teams.push(team)
            end
          
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

    def listateam()
        for team in @teams
          infoteam(team)
            acum = 0
          for player in team.players
            acum = acum + player.points
          end
          puts " Puntaje total: #{acum}"
        end
      end

      def infoteam(team)
        if team == nil
          return
        end
        puts "Equipo: #{team.nombre}"
      end
end

torneo = Torneo.new
torneo.createteams("Bolivar", "EqA")
torneo.createteams("Miranda", "EqB")
torneo.createteams("Lara", "EqC")
torneo.createteams("Tachira", "EqD")
torneo.createplayer("Luis", "Rivero", "17772329", "0001",34,"black", 3, 3, 1, 13, "EqA" )
torneo.createplayer("Pedro", "Alfonzo", "17884000", "0002",36,"white", 4, 2, 1, 19, "EqB" )
torneo.createplayer("Juan", "Perez", "264244447", "0003",35,"green", 5, 1, 1, 23, "EqC" )
torneo.createplayer("Diego", "Rizquez", "18888888", "0004",33,"orange",3, 3, 1, 13, "EqD" )
torneo.createplayer("Enrique", "simi", "19999999", "0005",32,"Orange", 6, 0, 1, 27, "EqA" )
torneo.createplayer("Jose", "piñera", "20000000", "0006",30,"green", 3, 0, 4, 24, "EqB" )
torneo.createplayer("Richar", "rosas", "21000000", "0007",35,"white", 3, 3, 1, 13, "EqC" )
torneo.createplayer("Mario", "Reyes", "22000000", "0008",33,"black", 3, 3, 1, 13, "EqD" )
torneo.createplayer("nelson", "Rios", "23000000", "0009",24,"yellow", 7, 0, 0, 28, "EqA" )

encontrar = torneo.searchplayer("17772329")
torneo.datosplayer(encontrar)
puts "Campeon del Torneo"
champions =torneo.campeon()
torneo.datosplayer(champions)
torneo.listateam()