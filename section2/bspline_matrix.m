%BSPLINE_MATRIX B-Spline evaluation in point x_j
%

function y = bspline_matrix(x,t,j,k)
    y = zeros(k+1);
    for n = 1:k+1
        %traverse columns of matrix in reverse
        %runs from bottom to n places up
        for m = k+1:-1:k+2-n
            if(n == 1)
                %first element of the matrix is a 0th order B-spline
                y(m,n) = 1;
            else
                %index relative to row of knots
                i = j - (m - (k+1));
                %onderste deel van de matrix
                if(m == k+1)
                    y(m,n) = ((x - t(i))/(t(i+n-1) - t(i))) * y(m,n-1);
                %bovenste deel van de matrix
                elseif (m == n)
                    y(m,n) = ((t(i+n) - x)/(t(i+n) - t(i+1))) * y(m+1,n-1);
                else
                    n
                    y(m,n) = ((x - t(i))/(t(i+n-1) - t(i))) * y(i,n-1) + ((t(i+n) - x)/(t(i+n) - t(i+1))) * y(m+1,n-1);
                end
            end
            y
        end
    end
end