class Changer
    COINS = [25, 10, 5, 1]
    def make_change(amount)
        return_amount = []
        COINS.each do |coin|
            return_amount << [coin] * (amount / coin) if amount >= coin
            amount = amount - (coin * (amount / coin))
        end
        return_amount.flatten

    end
end


# return_amount << [25] * (amount /25) if amount > 24
        # return_amount << [10] * (amount /10) if amount > 9
        # return_amount << [5] * (amount /5) if amount > 4
        # return_amount << [1] * amount if amount >0

#change(1) => [1]
#change(25) => [25]
#change(15) => [10, 5]
#change(99) => [25, 25 25, 10, 10, 1, 1, 1, 1]
#change(31) => [25, 5, 1]