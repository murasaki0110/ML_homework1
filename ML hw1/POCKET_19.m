%% POCKET_19
%% Initialization
TrainingData = dlmread('hw1_18_train.dat');
TestData = dlmread('hw1_18_test.dat');
W = [0,0,0,0,0];
W_pocket = [0,0,0,0,0];
SumOfErrorRate = 0;
update_times = 0;

%% Pocket updating
for times = 1:2000
    %rng('shuffle');
    while(update_times < 50)
        pick = randi(500); %random pick a data point
        if(misclassified(W,TrainingData(pick,:))) %see if it needs correct
            %updating W(t+1) <- W(t) + y(t)x(t)
            W(1,1:4) = W(1,1:4) + ...
                TrainingData(pick,1:4).*TrainingData(pick,5);
            W(1,5) = W(1,5) + TrainingData(pick,5); 
        end      
        update_times = update_times+1;
    end
    update_times = 0;
    SumOfErrorRate = SumOfErrorRate + E_in(W,TestData)/500;
end
fprintf('\n');
fprintf('Avg Error Rate on test set is:%.2f',SumOfErrorRate/2000);


    
    
    
    

