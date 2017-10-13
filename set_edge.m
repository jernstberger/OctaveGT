%This work is licensed under the Creative Commons Attribution 4.0 
%International License. To view a copy of this license, visit 
%http://creativecommons.org/licenses/by/4.0/.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amanda Olsen and Jon Ernstberger
% 10.26.2009
% load_graph.m
%
% This function file inputs the adjacency matrix of  
% a graph, G, and two vertices, u and v, that are 
% endpoints of an edge in G. The output is assigning 
% an edge between u and v.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input
% G = adjacency matrix of order nxn of graph G
% u = endpoint 1 of desired edge
% v = endpoint 2 of desired edge

% Output
% A = adjacency matrix G with the (u,v)th and (v,u)th 
% entries increased by one

function A = set_edge(G,u,v)  %input
G(u,v) = G(u,v) + 1;     % increases the (u,v)th entry by one
G(v,u) = G(v,u) + 1;     % increases the (v,u)th entry by one
A = G;                   % output