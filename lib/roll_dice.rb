class Roll_dice

    def initialize
        @scores = []
    end
    
    def roll(n)
        rolled_results = []
        n.times{results = rand(1..6)
            @scores << results
            rolled_results << results}
            return rolled_results
    end

    def record
        @scores
    end

    def current_score
        @scores.sum
    end

end