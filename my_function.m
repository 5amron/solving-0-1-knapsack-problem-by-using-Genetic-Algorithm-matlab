function price = my_function(chroms)

    weight_set = [23,47,22,15,42,30,15,32,47,33,15,38,44,7,16,34,30,33,3,2,43,31,46,17,30,1,34,21,30,21,29,21,36,14,18,21,13,3,27,44,33,11,9,31,40,40,30,9,41,31];
    price_set = [27,34,9,22,8,17,22,21,23,19,7,36,11,42,37,16,10,26,10,50,23,46,37,3,14,16,35,14,15,44,49,2,45,3,15,1,34,44,19,25,43,28,26,4,30,24,49,11,48,13];
  
    for i= 1:size(chroms,1)
        sum_of_prices=sum(chroms(i,:).* price_set);
        sum_of_weights=sum(chroms(i,:).* weight_set);

        if sum_of_weights <= 625
            price(i)= sum_of_prices;
        else
            price(i) = 0;
        end
        
    end
