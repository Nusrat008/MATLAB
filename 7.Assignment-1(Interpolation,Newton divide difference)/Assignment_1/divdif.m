function [ divdify] = divdif(xnodes,ynodes)
%%This is a function
%divdify = divdif(xnodes,yvalues)
%It calculates the divided differences of the function
%values given in the vector yvalues, which are the values of
%some function f(x) at the nodes given in xnodes.  On exit,
%divdify(i) = f[x1,...,xi], i=1,...,m
%with m the length of xnodes.  The input values xnodes and
%yvalues are not changed by this program.
%divdify = yvalues;
x=[15 20]
m = length(x);
divdify=[m,m];
%m=3
for i=2:m
    for j=m:-1:i
         divdify(j,i) = (divdify(j)-divdify(j-1))./(xnodes(j)-xnodes(j-i+1));
            %/(xnodes(j)-xnodes(j-i+1));
     end
end

end

