require 'roll_dice'

describe Roll_dice do
    it 'able to roll dice' do
        roll_dice = Roll_dice.new
        expect(roll_dice). to respond_to(:roll).with(1).argument
    end
    it 'rolled dice should return a number 1-6' do
        roll_dice = Roll_dice.new
        # expect(roll_dice). to respond_to(:roll).with(1).argument
        expect(roll_dice.roll(1)[0]).to be_between(1,6)
    end
    it 'returns a random number' do
        srand(6)
        expect(subject.roll(1)[0]).to eq 3
    end

    it 'allows us to roll any number of dice' do
        srand(12)
        expect(subject.roll(2)[0]).to eq 4
    end

    it 'records all of our rolls' do
        srand(12)
        expect(subject.roll(2)).to eq [4,4]
    end
    it 'records each dice roll' do
        srand(6)
        subject.roll(3)
        expect(subject.record).to eq [3,2,4]
    end

    it 'displays current score' do
        srand(6)
        subject.roll(3)
        expect(subject.current_score).to eq 9
    end
end