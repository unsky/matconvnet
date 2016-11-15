
% Setup MatConvNet.

% Load a model and upgrade it to MatConvNet current version.
net = load('H:\peddetect\data\models\imagenet-vgg-verydeep-16.mat');
net = vl_simplenn_tidy(net) ;

% Obtain and preprocess an image.
im = imread('a.png') ;
im=imresize(im,[160,64],'nearest');
im_ = single(im) ; % note: 255 range

% Run the CNN.
res = vl_simplenn(net, im_) ;
save('res.mat','res');

