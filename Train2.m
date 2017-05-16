[filename,pathname] = uigetfile({'*.*';'*.bmp';'*.tif';'*.gif';'*.png'},'Pick an Image to calculate descriptors');
img = imread([pathname,filename]);
img = imresize(img,[256,256]);
if ndims(img) ==3
  f1=il_rgb2gray(double(img));
else
  f1 = img;
end  
  [ysize,xsize]=size(f1);
  nptsmax=40;   
  kparam=0.04;  
  pointtype=1;  
  sxl2=4;       
  sxi2=2*sxl2;  
  % detect points
  [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
  whos valinit
  
  % Bedroom
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['bedroom\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Bedroom_Feat(i,:) = valinit;
    save Bedroom_Feat;
    close all
end
  
% Coast
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Coast\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Coast_Feat(i,:) = valinit;
    save Coast_Feat;
    close all
end

% Forest
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Forest\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Forest_Feat(i,:) = valinit;
    save Forest_Feat;
    close all
end

% Highway
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Highway\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Highway_Feat(i,:) = valinit;
    save Highway_Feat;
    close all
end

% Industrial
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['industrial\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Industrial_Feat(i,:) = valinit;
    save Industrial_Feat;
    close all
end

% Inside City
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Insidecity\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    InsideCity_Feat(i,:) = valinit;
    save InsideCity_Feat;
    close all
end

% Kitchen
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['kitchen\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Kitchen_Feat(i,:) = valinit;
    save Kitchen_Feat;
    close all
end

% Living Room
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['livingroom\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    LivingRoom_Feat(i,:) = valinit;
    save LivingRoom_Feat;
    close all
end

% Mountain
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Mountain\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Mountain_Feat(i,:) = valinit;
    save Mountain_Feat;
    close all
end

% Office
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Office\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Office_Feat(i,:) = valinit;
    save Office_Feat;
    close all
end

% Open Country
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['OpenCountry\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    OpenCountry_Feat(i,:) = valinit;
    save OpenCountry_Feat;
    close all
end

% Store
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['store\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Store_Feat(i,:) = valinit;
    save Store_Feat;
    close all
end

% Street
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Street\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Street_Feat(i,:) = valinit;
    save Street_Feat;
    close all
end

% Suburb
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['Suburb\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    Suburb_Feat(i,:) = valinit;
    save Suburb_Feat;
    close all
end

% TallBuilding
for i=1:100
    disp(['Processing frame no.',num2str(i)]);
    img=imread(['TallBuilding\',num2str(i),'.jpg']);
    img = imresize(img,[256,256]);
    figure, imshow(img);
    if ndims(img) ==3
    f1=il_rgb2gray(double(img));
    else
    f1 = img;
    end  
    [ysize,xsize]=size(f1);
    nptsmax=40;   
    kparam=0.04;  
    pointtype=1;  
    sxl2=4;       
    sxi2=2*sxl2;  
  % detect points
    [posinit,valinit]=STIP(f1,kparam,sxl2,sxi2,pointtype,nptsmax);
    TallBuilding_Feat(i,:) = valinit;
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