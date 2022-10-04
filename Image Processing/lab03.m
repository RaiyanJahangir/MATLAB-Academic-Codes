input = imread('img04.tif');
imshow(input);
[R C] = size(input);
pdf = zeros(1,256,'double');

%histogram from pdf
for x = 1 : R
   for y = 1 : C
       pdf(input(x,y)+1) = pdf(input(x,y)+1) + 1 ;
   end
end

figure
plot(pdf);










