%This work is licensed under the Creative Commons Attribution 4.0 
%International License. To view a copy of this license, visit 
%http://creativecommons.org/licenses/by/4.0/.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amanda Olsen and Jon Ernstberger
% 10.15.2009
% complete_graph.m
%
% This function file takes ones value, n, and creates an
% adjacency matrix for a complete graph on n vertices
% below the diagonal.
%
% NOTE: Since the adjacency matrix is symmetric about the
%       diagonal, the entries above the diagonal remain
%       zero and are ignored.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input
% n = number of rows and columns of adjacency matrix
%   = number of vertices in graph

% Output
% A = adjacency matrix for complete graph on n vertices

function A = complete_graph(n)
B = create_graph(n);       % forms zero matrix of size n

j = 1;        % column value of matrix
i = j+1;      % row value of matrix

while i > j & j <=n-1
        while i <= n      % This while loop sets all entries in the
            B(i,j) = 1;   % same column equal to 1 where the row
            B(j,i) = 1;   % value does not equal the column value
            i = i + 1;    
        end;
    j = j + 1;    % This shifts the while loop to the next column
    i = j + 1;    % This guarantees that the row value will be
                  % greater than the column value
end;              

% The resulting matrix has all entries below the diagonal equal to
% 1 since every vertex is adjacent to every other vertex in a 
% complete graph.  Again, the entries above the diagonal remain
% zero since the adjacency matrix is symmetric about the diagonal.

A = B;
