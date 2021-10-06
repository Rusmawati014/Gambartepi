gambar = imread('image2.png');
figure(1)
imshow(gambar);
title('gambar Berwarna');

a = rgb2gray(gambar);
figure(2);
imshow(a);
title('Gambar Abu');

%Roberts
e = edge(a,'roberts');
figure(3);
imshow(e);
title('Metode Roberts')

%sobel
r = edge(a,'sobel');
figure(4);
imshow(r);
title('Metode Sobel')

%prewitt
t = edge(a,'prewitt');
figure(5);
imshow(t);
title('Metode Prewitt')

%canny
f = edge(a,'canny');
figure(6);
imshow(f);
title('Metode canny')

%laplacian
s = edge(a,'log');
figure(7);
imshow(s);
title('Metode Laplacian')

%kompas
utara = [1 1 1; 1 2 1; -1 -1 -1];
selatan = [-1 -1 -1; 1 -2 1; 1 1 -1];
timur = [-1 1 1; -1 -2 1; -1 1 1];
barat = [1 1 -1; 1 -2 -1; 1 1 -1];

figure(8);
imshow (conv2(a,utara,'same'));
title('gambar compas utara');

figure(9);
imshow (conv2(a,selatan,'same'));
title('gambar compas selatan');

figure(10);
imshow (conv2(a,timur,'same'));
title('gambar compas timur');

figure(11);
imshow (conv2(a,barat,'same'));
title('gambar compas barat');



%isotropik
Horizontal = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
Vertical = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];

 figure (12);
 imshow(conv2(a,Horizontal,'same'));
 title('Gambar Isotropic horizontal')
 
 figure (13);
 imshow(conv2(a,Vertical,'same'));
 title('Gambar Isotropic Vertical')


