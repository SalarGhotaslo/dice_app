require 'roll_dice'

describe Roll_dice do
    it 'able to roll dice' do
        roll_dice = Roll_dice.new
        expect(roll_dice). to respond_to(:roll)
    end
    it 'rolled dice should return a number 1-6' do
        roll_dice = Roll_dice.new
        # expect(roll_dice). to respond_to(:roll).with(1).argument
        expect(roll_dice.roll).to be_between(1,6)
    end
    

end