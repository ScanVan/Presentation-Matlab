% Scripts used to prepare for the presentation
% Author: Marcelo Kaihara
% Date: 09-09-2019

% Load triplet images from file
x1 = imread('20190319-103724-844898.bmp');
x2 = imread('20190319-103725-094897.bmp');
x3 = imread('20190319-103725-344896.bmp');

% Load matching positions of the triplet
fileID = fopen('20190319-103724-844898_20190319-103725-094897_20190319-103725-344896');
formatSpec = '%f %f %f %f %f %f';
sizeA = [6 Inf];
A=fscanf(fileID, formatSpec, sizeA);

% Show the images of the triplets aligned vertically
figure;
x = [x1; x2; x3];
imshow(x);

% Show the images of the triplets with the features on them
figure;
imshow(x);
hold on;

xx1 = A(1,:)';
yy1 = A(2,:)';
plot(xx1,yy1,'.y');

xx2 = A(3,:)';
yy2 = A(4,:)' + size(x1,1);
plot(xx2,yy2,'.y');

xx3 = A(5,:)';
yy3 = A(6,:)' + 2*size(x1,1);
plot(xx3,yy3,'.y');

% Show the correspondances between first and second images
figure;
imshow(x);
hold on;

xx1 = A(1,:)';
yy1 = A(2,:)';
plot(xx1,yy1,'.y');

xx2 = A(3,:)';
yy2 = A(4,:)' + size(x1,1);
plot(xx2,yy2,'.y');

xx3 = A(5,:)';
yy3 = A(6,:)' + 2*size(x1,1);
plot(xx3,yy3,'.y');

for i=1:size(xx1)
    p1 = line([xx1(i) xx2(i)],[yy1(i) yy2(i)]);
    p1.Color = 'green';
    p1.LineStyle='--';
    p1.LineWidth=0.5;
end

% Show the correspondances between second and third images
figure;
imshow(x);
hold on;

xx1 = A(1,:)';
yy1 = A(2,:)';
plot(xx1,yy1,'.y');

xx2 = A(3,:)';
yy2 = A(4,:)' + size(x1,1);
plot(xx2,yy2,'.y');

xx3 = A(5,:)';
yy3 = A(6,:)' + 2*size(x1,1);
plot(xx3,yy3,'.y');

for i=1:size(xx1)
    p1 = line([xx1(i) xx2(i)],[yy1(i) yy2(i)]);
    p1.Color = 'green';
    p1.LineStyle='--';
    p1.LineWidth=0.5;
end

for i=1:size(xx1)
    p1 = line([xx2(i) xx3(i)],[yy2(i) yy3(i)]);
    p1.Color = 'magenta';
    p1.LineStyle='--';
end

% Show the superposition of each of the images on each color channel
im4 = x1;
im4(:,:,2)=x2(:,:,2);
im4(:,:,3)=x3(:,:,3);

figure;
imshow (im4);

% Show the correspondances on the superposed image
figure;
imshow (im4);
hold on;

xxx1 = A(1,:)';
yyy1 = A(2,:)';
plot(xxx1,yyy1,'.y');

xxx2 = A(3,:)';
yyy2 = A(4,:)';
plot(xxx2,yyy2,'.y');

xxx3 = A(5,:)';
yyy3 = A(6,:)';
plot(xxx3,yyy3,'.y');

for i=1:size(xxx1)
    p1 = line([xxx1(i) xxx2(i)],[yyy1(i) yyy2(i)]);
    p1.Color = 'green';
    p1.LineStyle='--';
    p1.LineWidth=0.5;
end

for i=1:size(xxx1)
    p1 = line([xxx2(i) xxx3(i)],[yyy2(i) yyy3(i)]);
    p1.Color = 'magenta';
    p1.LineStyle='--';
end

% Show the images on a sphere
numFaces = 600;
[x,y,z] = sphere(numFaces);
I = im2double(x1);
J = flipud(imresize(I,size(x)));
figure;
pcshow([x(:),y(:),z(:)],reshape(J,[],3));

I = im2double(x2);
J = flipud(imresize(I,size(x)));
figure;
pcshow([x(:),y(:),z(:)],reshape(J,[],3));

I = im2double(x3);
J = flipud(imresize(I,size(x)));
figure;
pcshow([x(:),y(:),z(:)],reshape(J,[],3));


