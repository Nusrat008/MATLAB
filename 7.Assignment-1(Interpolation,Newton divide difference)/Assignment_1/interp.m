
function peval = interp(xnodes,divdify,xeval)
%% This is a function
% peval = interp(xnodes,divdify,xeval)
% It calculates the Newton divided difference form of
% the interpolation polynomial of degree m-1, where the
% nodes are given in xnodes, m is the length of xnodes,
% and the divided differences are given in divdify.  The
% points at which the interpolation is to be carried out
% are given in xeval; and on exit, peval contains the
% corresponding values of the interpolation polynomial.
m = length(xnodes);
peval = divdify(m)*ones(size(xeval));
for i=m-1:-1:1
    peval = divdify(i) + (xeval - xnodes(i)).*peval;
end


