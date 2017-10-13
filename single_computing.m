    %% programmer : samanSadeghyan (samronsadeghyan@gmail.com)
    % this is solving 0/1 knapsack problem by using Genetic Algorithm
    % technique.


                %% setting variables and parameters
                time = cputime;
                no_variables = 50;
                pop_size = 10;
                mut_rate = 0.1;
                iter_num = 50;

                no_mutations = mut_rate * no_variables*(pop_size-1);

                chroms = round(rand(pop_size,no_variables));
                %% starting the generations

                for generation = 1:iter_num

                    price = my_function(chroms);

                    % ranking the chromosomes
                    [price,index] = sort(price, 'descend');

                    chroms = chroms(index(1:pop_size),:);
                    half_pop_size = pop_size / 2;
                    top_half = chroms(1:half_pop_size,:);

                    chroms = [top_half; top_half];

                    disp(['generation :', num2str(generation) ,' sum of prices :', num2str(price(1))])


                    crossing = ceil((no_variables - 1) * rand(half_pop_size,1));
                    
                    for n=1:half_pop_size
                        chroms(ceil(half_pop_size*rand),1:crossing(n)) = chroms(half_pop_size + n,1:crossing(n));
                    end

                    % mutation
                    for n = 1:no_mutations

                        xx = ceil(pop_size * rand);
                        yy = ceil(no_variables * rand);
                        chroms(xx,yy)= 1 - chroms(xx,yy);

                    end

                    chroms(half_pop_size + 1: end ,:) = top_half;

                    counting(generation) = price(1);
                    
                    if(iter_num == generation)
                        disp(['   ',num2str(pop_size),'    ',num2str(mut_rate), '    ',num2str(iter_num),'    ' ,num2str(counting(generation)) ,'    ',num2str(cputime - time) ])
                        
                    end
                end


                figure(1)
                plot(1:iter_num, counting, 'x');
                hold on;

                solution = top_half(1,:);
