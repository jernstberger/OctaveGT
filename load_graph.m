%This work is licensed under the Creative Commons Attribution 4.0 
%International License. To view a copy of this license, visit 
%http://creativecommons.org/licenses/by/4.0/.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amanda Olsen and Jon Ernstberger
% LaGrange College
% amolsen@lagrange.edu
% 12.16.2009
%
% load_graph.m
% v. 0.1
%
% This function file inputs a string, str, and loads
% str.mat.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Input
% B = string
%
% Output
% load(B)

function A = load_graph(B)
who
A = load(B);

return;