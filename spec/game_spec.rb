require 'game'

describe Game do

	let(:game) 		{ Game.new("me", "not me")																																		}
	let(:player1) { double :player1, :grid => grid1, :deploy_ships => nil, :display_grid => nil	}

	context 'At the start of the game' do
	
		it 'should start with 2 instances of the player class' do
			expect(game.players[0]).to be_an_instance_of Player
			expect(game.players[1]).to be_an_instance_of Player
		end

		it 'should know which is the current player' do
			expect(game.current_player).to be game.players[0]
		end

		it 'should know which is the other player' do
			expect(game.other_player).to be game.players[1]
		end
		
		it 'should have a status of nil initially' do
			expect(game.status).to be nil
		end

		it 'can start the game' do
			game.start_game
			expect(game.status).to be :started
		end

	end

	context 'In round n' do 

		it 'can change turns' do
			player1 = game.current_player
			game.change_turn
			expect(game.other_player).to be player1
		end

		xit 'can declare victory' do
		end

		xit 'can end the game' do
		end

		xit 'can stop a player attacking the same cell twice' do
		end

	end

end