%This work is licensed under the Creative Commons Attribution 4.0 
%International License. To view a copy of this license, visit 
%http://creativecommons.org/licenses/by/4.0/.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amanda Olsen and Jon Ernstberger
% 10.15.2009
% create_graph.m
%
% This function takes one values, n, and creates an
% adjacency matrix for an empty graph on n vertices or an 
% nxn array where all entries are zero.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input
% n = number of rows and columns of matrix
%   = number of vertices in graph

% Ouput
% A = zero matrix of size n
%   = adjacency matrix for empty graph on n vertices

function A = create_graph(n)
A = zeros(n);