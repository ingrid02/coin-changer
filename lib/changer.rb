class Changer
    def change amount
        #return[10] * (amount /10) if amount > 9
        #return[5] * (amount /5) if amount > 4
        [1] * amount
    end
end
#change(1) => [1]
#change(25) => [25]
#change(15) => [10, 5]
#change(99) => [25, 25 25, 10, 10, 1, 1, 1, 1]
#change(31) => [25, 5, 1]