%This work is licensed under the Creative Commons Attribution 4.0 
%International License. To view a copy of this license, visit 
%http://creativecommons.org/licenses/by/4.0/.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amanda Olsen and Jon Ernstberger
% LaGrange College
% amolsen@lagrange.edu
% 04.24.2010
%
% shortest_path.m
% v. 0.1
%
% This function takes a struct G with the necessary
% fields 'adj' and 'label' and two vertex labels
% str1 and str2.  The function then formulates all paths 
% from str1 to str2 found in the adjacency matrix in the
% field adj of the struct G.  The output is the 
% shortest path from str1 to str2.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Input
% G    = struct representing a graph G with the necessary
%        fields adj and label
% str1 = vertex label 1
% str2 = vertex label 2
%
% Output
% A = the collection of vertex labels required for the
%     connection of the shortest path from str1 to str2

function A = shortest_path(G,str1,str2)
u = find(ismember(G.label,str1)==1);
v = find(ismember(G.label,str2)==1);
n = G.order;

for i = 1:n
    if G.adj(u,i) == 1 && i == v
        B = [str1 str2];
    elseif G.adj(u,i) == 1 && i ~= v && i < n
        a = G.label(i);
        for j = i+1:n;
            if G.adj(i,j) == 1 && j == v
                B = [str1 a str2];
            elseif G.adj(i,j) == 1 && j ~= v && j < n
                b = G.label(j);
                for k = j+1:n;
                    if G.adj(j,k) == 1 && k == v
                        B = [str1 a b str2];
                    elseif G.adj(j,k) == 1 && k ~= v && k < n
                        c = G.label(k);
                        for l = k+1:n;
                            if G.adj(k,l) == 1 && l == v
                                B = [str1 a b c str2];
                            elseif G.adj(k,l) == 1 && l ~= v && l < n
                                d = G.label(l);
                                for m = l+1:n;
                                    if G.adj(l,m) == 1 && m == v
                                        B = [str1 a b c d str2];
                                    else
                                        e = G.label(m);            
                                        B = [str1 a b c d e str2];
                                    end;
                                end;
                            else
                                C = 0;
                            end;
                        end;
                    else
                        C = 0;
                    end;
                end;
            else
                C = 0;
            end;
        end;
    else
        C = 0;
    end;
end;
A = B;            
            
            
            
            
            
            
            