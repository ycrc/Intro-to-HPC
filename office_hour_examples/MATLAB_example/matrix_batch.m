
tic;
for i=1:15
 size = 10000;
 mat = rand(size, size) ;

 % Generate a symmetric matrix
 mat2 = transpose(mat) * mat ;

 % Calculate the Cholesky factor of the matrix
 chol(mat2) ;
end
st = toc ;
fprintf('time:%f\n',st)

exit ;
