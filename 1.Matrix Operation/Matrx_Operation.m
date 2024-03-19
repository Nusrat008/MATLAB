clear all

xy(1:2,1:2,1) = [0 1; 1 0];
xy(:,:,2) = [0 -1i;1i 0];
xy(:,:,3) = [1 0;0 -1];
for ii = 1:size(xy,3)
    k = xy(:,:,ii)
    Mat_test(k)
end
    