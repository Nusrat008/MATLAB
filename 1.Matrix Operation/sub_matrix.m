A = [1 2;3 4];

B = [A -A;-A A]

 
C = [4 -3;-2 1]
[R P] = ismember(C,B)
% P represent the index of the elements of C
% R is the ones matrix


%{
A = magic(6) 
B = A(2:3,4:5) 
% engine
szA = size(A) ;
szB = size(B) ;
szS = szA - szB + 1 
tf = false(szA) ;
for r = 1:szS(1)
    for c = 1:szS(2)
        tf(r,c) = isequal(A(r:r+szB(1)-1,c:c+szB(2)-1),B) ;
    end
end
[rout,cout] = find(tf)
%}
%{
def gridSearch(G, P):
    g_sze = len(G)
    p_sze = len(P)
    p_ptr = 0
    for g_ptr, g_row in enumerate(G):
        if P[p_ptr] in g_row:
            p_ptr += 1
            if p_ptr == p_sze:
                return True
        else:
            p_ptr = 0
            if g_sze - g_ptr < p_sze-p_ptr:
                return False

    return False

%}