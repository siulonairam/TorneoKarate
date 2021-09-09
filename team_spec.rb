require_relative 'team'
require_relative 'player'

RSpec.describe Team do
    context 'initialize team class' do
        before (:each) do
            @team = Team.new 'Ninjas Team'
        end
        it '#new' do
            expect(@team).to be_a_instance_of(Team)
        end
        it 'new#name' do
            expect(@team.name).to eq('Ninjas Team')
        end
    end
    context 'load players' do
        it "#load" do
        @team = Team.new 'Ninjas Teams'
        player = Player.new 'Luis', 'Rivero', '17772329', '0001', '35', 'black', '3', '3', '1', '12'
end
