require_relative 'Player'
require_relative 'Team'
require_relative 'Torneo'


RSpec.describe Player do
    context 'initialize player class' do
        before(:each) do
            @player = Player.new 'Luis', 'Rivero', '17772329', '0001', '35', 'black', '3', '3', '1', '12', "EqA"
        end
        it 'new' do
            expect(@player).to be_a_instance_of(Player)
        end    
        it 'new#firtsname' do
            expect(@player.firtsname).to eq('Luis')
        end
        it 'new#lastname' do
             expect(@player.lastname).to eq('Rivero')
        end
        it 'new#dni' do
            expect(@player.dni).to eq('17772329')
        end
        it 'new#code' do
            expect(@player.code).to eq('0001')
        end
        it 'new#years' do
            expect(@player.years).to eq('35')
        end
        it 'new#color' do
            expect(@player.color).to eq('black')
        end
        it 'new#fightwin' do
            expect(@player.fightwin).to eq('3')
        end
        it 'new#fightloss' do
            expect(@player.fightloss). to eq ('3')
        end
        it 'new#fightie' do
            expect(@player.fighttie).to eq('1')
        end
        it 'new#points' do
        expect(@player.points).to eq('12')
        end
        it 'new#equipo' do
            expect(@player.equipo).to eq('EqA')
            end
    end

end

RSpec.describe Team do
    context 'initialize team class' do
        before (:each) do
            @team = Team.new 'EqA', 'equipo1'
            @player = Player.new 'Luis', 'Rivero', '17772329', '0001', '35', 'black', '3', '3', '1', '12', "EqA"
        end
        it '#new' do
            expect(@team).to be_a_instance_of(Team)
        end
        it 'new#name' do
            expect(@team.name).to eq('EqA')
        end
        it 'new#codigo' do
            expect(@team.codigo).to eq('equipo1')
        end
    end

end