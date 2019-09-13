% Script to show the evolution of the model reconstruction using the pose
% estimation algorithm
% The pose estimation was applied to the triplet:
% 20190319-103724-844898_20190319-103725-094897_20190319-103725-344896
% Author: Marcelo Kaihara
% Date: 09-09-2019


figure; 
ptCloud1 = pcread('model_1.ply');
pcshow(ptCloud1);
view(0, -90);
axis([-150 150 -150 150 -50 0]);
title ('Iteration 1');

figure; 
ptCloud1 = pcread('model_2.ply');
pcshow(ptCloud1);
view(0, -90);
axis([-150 150 -150 150 -50 0]);
title ('Iteration 2');

figure; 
ptCloud1 = pcread('model_5.ply');
pcshow(ptCloud1);
view(0, -90);
axis([-150 150 -150 150 -50 0]);
title ('Iteration 5');

figure; 
ptCloud1 = pcread('model_50.ply');
pcshow(ptCloud1);
view(0, -90);
axis([-150 150 -150 150 -50 0]);
title ('Iteration 50');

figure; 
ptCloud1 = pcread('model_160.ply');
pcshow(ptCloud1);
view(0, -90);
axis([-150 150 -150 150 -50 0]);
title ('Iteration 160');