function y = misclassified(W, Choosepoint)

y = (sign([Choosepoint(1,1:4),1]*W')~=Choosepoint(1,5));


end

