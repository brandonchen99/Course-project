function [x, out]=l1_cvx_mosek(x0, A, b, mu, opts)
	n = size(A, 2);
	cvx_solver mosek
	cvx_begin quiet
	    variable x(n)
	    minimize(0.5* sum_square( A * x - b ) + mu * norm( x, 1 ) )
	cvx_end

    out = [];
	out.val = 0.5* sum_square( A * x - b ) + mu * norm( x, 1 );
end 