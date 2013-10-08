function y = E_in( W , TrainingData )
%E_IN Summary of this function goes here
%   Detailed explanation goes here

NumOfError = 0;

for i=1:400
    if(misclassified(W,TrainingData(i,:)))
       
       NumOfError = NumOfError + 1;
    end
end

y = NumOfError;


end

