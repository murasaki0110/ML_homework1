function y = E_in( W , TrainingData )


Wtest = TrainingData;
Wtest(:,5) = 1;

Correct = (sign(Wtest*W') == TrainingData(:,5));


y = length(TrainingData) - sum(Correct);


end



