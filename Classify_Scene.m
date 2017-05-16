close all;
clear all;
clc;
[filename,pathname] = uigetfile({'*.*';'*.bmp';'*.tif';'*.gif';'*.png'},'Pick an Image to calculate descriptors');
img = imread([pathname,filename]);
img = imresize(img,[256,256]);
if ndims(img) == 3
      img = rgb2gray(img);
end
figure,imshow(img);title('Selected Image');

% Load image
%img = imread('demo2.jpg');

% GIST Parameters:
clear param
param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
param.numberBlocks = 4;
param.fc_prefilt = 4;

% Computing gist:
[gist, param] = LMgist(img, '', param);

test = gist;
load('TrainFeat_GIST.mat')
%load('Trail_Feat.mat')
result = multisvm(T,C,test);
%if result == 1
%    helpdlg('Bed Room');
%elseif result == 2
 %   helpdlg('Coast');
%elseif result == 3
%    helpdlg('Forest');
%elseif result == 4
%    helpdlg('Highway');
%elseif result == 5
%    helpdlg('Industrial');
%elseif result == 6
%    helpdlg('Inside City');
%elseif result == 7
%    helpdlg('Kitchen');
%elseif result == 8
 %   helpdlg('Living Room');
%elseif result == 9
%    helpdlg('Mountain');
%elseif result == 10
%    helpdlg('Office');
%elseif result == 11
 %   helpdlg('Open Country');
%elseif result == 12
 %   helpdlg('Store');
%elseif result == 13
%    helpdlg('Street');
%elseif result == 14
%    helpdlg('Suburb');
%elseif result == 15
 %   helpdlg('Tall Building');
%end
 

disp(result);

