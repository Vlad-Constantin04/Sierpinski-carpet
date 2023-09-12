function covor_sierpinski(i);

% TEPPICH(N) draws the n-th iteration of the
% Sierpinski carpet

% TEPPICH uses n = 6.
%default setting
switch nargin
    case 0
        i=6;
end

tic 
M = 0;
% create a matrix M consisting of zeros and ones
% indicating the points of the carpet 
for k=1:i
    M = [M,      M,        M;
         M,  ones(3^(k-1)),M;
         M,      M,        M];
end

% plot settings
imagesc(M);
colormap(gray);

axis equal;
axis off;
toc