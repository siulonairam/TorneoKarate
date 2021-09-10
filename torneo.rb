require_relative 'player'
require_relative 'team'
class Torneo
    attr_accessor :teams :nameteam
    def initialize name
        @teams = Array.new
    end
    def createteam players
        team = Team.new players
        @teams.push(team)
        @teams.name = name
    end
end