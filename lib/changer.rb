class Changer
    def change(amount)
        return_amount = []
        [25, 10, 5, 1].each do |coin|
            return_amount << [coin] * (amount / coin) if amount >= coin
            amount = amount - (coin * (amount / coin))
        end
        
        return_amount.flatten
    end
end
#change(1) => [1]
#change(25) => [25]
#change(15) => [10, 5]
#change(99) => [25, 25 25, 10, 10, 1, 1, 1, 1]