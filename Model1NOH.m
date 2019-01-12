function [X,fval] = Model1NOH()
    A = [-1 0 3/2 0;
          0 -1 0 2/3;
          -1 -1 0 0;
          -1 0 0 0;
          0 -1 0 0;
          0 0 -1 0;
          0 0 0 -1;
          1 0 0 0;
          0 1 0 0;
          0 0 1 0;
          0 0 0 1;];
      b = [-5;0;-14;-10;-10;-5;-5;45;35;30;25];
      f = [-3;-3;-2;-2];
      [X,fval] = linprog(f,A,b);
      fval = fval+415;
      fprintf("The Value Of X Are As Follows:\n");
      fprintf("X1 : %f secs\nX2 : %f secs\nX3 : %f secs\nX4 : %f secs\n",X(1),X(2),X(3),X(4));
      fprintf("The Minimum Wait Time At The Signal Is : %f secs\n",fval);
end