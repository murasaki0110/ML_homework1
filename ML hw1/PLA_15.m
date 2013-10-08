%% PLA_15


%% Initialization
TrainingData = dlmread('hw1_15_train.dat');
W = [0,0,0,0,0];
NumOfError = 0;
Existfault = 1;

%% PLA updating
while(Existfault)
for i=1:400
    % find a mistake
    if(misclassified(W,TrainingData(i,:)))     
       % updating W(t+1) <- W(t) + y(t)x(t) 
       W(1,1:4) = W(1,1:4) + TrainingData(i,1:4).*TrainingData(i,5);
       W(1,5) = W(1,5) + TrainingData(i,5); 
       NumOfError = NumOfError + 1;
    end
end
    % run next cycle until no mistake found
    if(E_in(W,TrainingData)==0)
        Existfault = 0;
    end
end
%% Result
fprintf('\n');
fprintf('Final W =');
disp(W);
fprintf('Total Num of error = %d \n\n',NumOfError);



