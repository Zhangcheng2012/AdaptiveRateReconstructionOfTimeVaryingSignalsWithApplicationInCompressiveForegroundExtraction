% FUNCTION: xout = proxSquareL2norm(ss, gamma)
% PURPOSE:  Perform the proximal operator of the L2-norm:
%                    min_x 0.5*||x||^2_2 + 1/(2*gamma)*|x - s|_2^2
%
% INFORMATION:
%    By Quoc Tran-Dinh, Laboratory for Informations and Inference Systems
%       (LIONS), EPFL, Lausanne, Switzerland.
%    Joint work with Volkan Cevher.
%    Date: 14.03.2014
%    Last modified: 14.03.2014
%    Contact: quoc.trandinh@epfl.ch
%
function xout = proxSquareL2norm(ss, gamma)

    if nargin < 2,     gamma = 1; end
    if isempty(gamma), gamma = 1; end
    
    xout = (1.0/(gamma + 1))*ss;
    
end

% DECOPT v.1.0 by Quoc Tran-Dinh and Volkan Cevher.
% Copyright 2014 Laboratory for Information and Inference Systems (LIONS)
%                EPFL Lausanne, 1015-Lausanne, Switzerland.
% See the file LICENSE for full license information.