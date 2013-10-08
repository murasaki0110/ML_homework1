%% PLA_16

%% Initialization
TrainingData = dlmread('hw1_15_train.dat');
W = [0,0,0,0,0];
NumOfError = 0;
Existfault = 1;

%% PLA updating
for times = 1:2000 
while(Existfault)
    rng('shuffle');
    list = randperm(400); % make pre-determined cycle
for i=1:400    
    if(misclassified(W,TrainingData(list(i),:)))    
       % updating W(t+1) <- W(t) + y(t)x(t) 
       W(1,1:4) = W(1,1:4) + ...
           0.5.*TrainingData(list(i),1:4).*TrainingData(list(i),5);
       W(1,5) = W(1,5) + 0.5*TrainingData(list(i),5); 
       NumOfError = NumOfError + 1;
    end
end
    if(E_in(W,TrainingData)==0)
        Existfault = 0;
    end
end
    W = [0,0,0,0,0]; % reset for next iteration with new cycle
    Existfault = 1;
end

%% Result
fprintf('\n');
fprintf('Average Num of error = %f \n\n',NumOfError/2000);

