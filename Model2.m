function [X,fval] = Model2()
    A = [-1 0 3 0;
          0 1 0 -1;
          0 0 -1/2 1;
          0 0 -1 0;
          0 -1 0 0;];
      b = [0;-5;0;-3;-2];
      f = [1;1;1;1];
      [X,fval] = linprog(f,A,b);
      fval = fval+120;
      fprintf("The Value Of X Are As Follows:\n");
      fprintf("X1 : %f mins\nX2 : %f mins\nX3 : %f mins\nX4 : %f mins\n",X(1),X(2),X(3),X(4));
      fprintf("The Minimum Time Required For Travel Is : %f mins\n",fval);
end
      