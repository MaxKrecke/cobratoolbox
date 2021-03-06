function [model2] = generateRules(model)
% If a model does not have a model.rules field but has a model.grRules
% field, can be regenerated using this script
%
% USAGE:
%
%    [model2] = generateRules(model)
%
% INPUT:
%    model:     with model.grRules
%
% OUTPUT:
%    model2:    same model but with model.rules added
%
% .. Author: -  Aarash Bordar 11/17/2010
%            -  Uri David Akavia 6-Aug-2017, bug fixes and speedup

grRules = model.grRules;
genes = model.genes;
convertGenes = @(x) sprintf('%d', find(strcmp(x, genes)));
tmp = regexprep(grRules,'\( *','('); %replace all spaces after opening parenthesis
tmp = regexprep(tmp,' *\)',')'); %replace all spaces before closing paranthesis.
tmp = regexprep(tmp, ' * (?i)(and) *', ' & ');
tmp = regexprep(tmp, ' * (?i)(or) *', ' | ');
rules = regexprep(tmp, '([^\(\)\|\&\ ]+)', 'x(${convertGenes($0)})');

model2 = model;
model2.rules = rules;

end
