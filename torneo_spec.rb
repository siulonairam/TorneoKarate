require_relative 'player'
require_relative 'team'
require_relative 'torneo'

RSpec.describe Torneo do
    context 'initialize team class' do
        before (:each) do
            @torneo = Torneo.new 'Torneo 2021'
        end
        it '#new' do
            expect(@torneo).to be_a_instance_of(Torneo)
        end
    end
    context 'Create teams' do
        it "#createteam" do
            @torneo = Torneo.new 'Torneo 2021'
            team = Team.new 'Ninjas Team', 
            @torneo.createteam'Ninjas Team',
            expect(@torneo.team[0].name).to eql('Ninjas Team')
       end
    end
end