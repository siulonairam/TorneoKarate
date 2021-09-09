class Player
    attr_accessor :firtsname, :lastname, :dni, :code, :years, :color, :fightwin, :fightloss, :fighttie, :points
    def initialize (firtsname, lastname, dni, code, years, color, fightwin, fightloss, fighttie, points)
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
    end
end