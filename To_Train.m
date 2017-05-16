[filename,pathname] = uigetfile({'*.*';'*.bmp';'*.tif';'*.gif';'*.png'},'Pick an Image to calculate descriptors');
img = imread([pathname,filename]);
img = imresize(img,[256,256]);

% Load image
%img = imread('demo2.jpg');

% GIST Parameters:
clear param
param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
param.numberBlocks = 4;
param.fc_prefilt = 4;

% Computing gist:
[gist, param] = LMgist(img, '', param);
whos gist

% Kitchen
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['kitchen\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Kitchen_Feat(i,:) = gist;
    whos Kitchen_Feat
    Kitchen_Feat = pca(Kitchen_Feat);
    whos Kitchen_Feat
    %save Kitchen_Feat;
    close all
end

% Living Room
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['livingroom\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    LivingRoom_Feat(i,:) = gist;
    save LivingRoom_Feat;
    close all
end

% Mountain
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Mountain\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Mountain_Feat(i,:) = gist;
    save Mountain_Feat;
    close all
end

% Office 
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Office\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Office_Feat(i,:) = gist;
    save Office_Feat;
    close all
end

% Open Country
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['OpenCountry\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    OpenCountry_Feat(i,:) = gist;
    save OpenCountry_Feat;
    close all
end

% store
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['store\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Store_Feat(i,:) = gist;
    save Store_Feat;
    close all
end

% Street
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Street\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Street_Feat(i,:) = gist;
    save Street_Feat;
    close all
end

% Suburu
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Suburb\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    Suburb_Feat(i,:) = gist;
    save Suburb_Feat;
    close all
end

% Tall Building
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['TallBuilding\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    if ndims(img) == 3
      img = rgb2gray(img);
    end
    figure, imshow(img);
    clear param
    param.orientationsPerScale = [8 8 8 8]; % number of orientations per scale (from HF to LF)
    param.numberBlocks = 4;
    param.fc_prefilt = 4;

    % Computing gist:
    [gist, param] = LMgist(img, '', param);
    TallBuilding_Feat(i,:) = gist;
    save TallBuilding_Feat;
    close all
end

% Put all features into one
load('Bedroom_Feat');
load('Coast_Feat');
load('Forest_Feat');
load('Highway_Feat');
load('Industrial_Feat');
load('InsideCity_Feat');
load('Kitchen_Feat');
load('LivingRoom_Feat');
load('Mountain_Feat');
load('Office_Feat');
load('OpenCountry_Feat');
load('Store_Feat');
load('Street_Feat');
load('Suburb_Feat');
load('TallBuilding_Feat');

T = [Bedroom_Feat;Coast_Feat;Forest_Feat;Highway_Feat;Industrial_Feat;InsideCity_Feat;Kitchen_Feat;LivingRoom_Feat;Mountain_Feat;Office_Feat;OpenCountry_Feat;Store_Feat;Street_Feat;Suburb_Feat;
    TallBuilding_Feat];
C = [ones(1,100) 2*ones(1,100) 3*ones(1,100) 4*ones(1,100) 5*ones(1,100) 6*ones(1,100) 7*ones(1,100) 8*ones(1,100) 9*ones(1,100) 10*ones(1,100) 11*ones(1,100) 12*ones(1,100) 13*ones(1,100) 14*ones(1,100) 15*ones(1,100)];