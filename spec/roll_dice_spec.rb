require 'roll_dice'

describe Roll_dice do
    it 'able to roll dice' do
        roll_dice = Roll_dice.new
        expect(roll_dice). to respond_to (:roll)
        end
    end