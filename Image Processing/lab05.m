input = imread('img05.tif');
imshow(input);
[R C] = size(input);
pdf = zeros(1,256);
cdf = zeros(1,256);
output = zeros(R,C,'uint8');

%cdf generation from pdf
for x = 1 : R
   for y = 1 : C
       pdf(input(x,y)+1) = pdf(input(x,y)+1) + 1 ;
   end
end

cdf(1) = pdf (1);

for x = 2:256
    cdf(x) = cdf(x-1) + pdf(x);
end

%normalization of cdf
normcdf = round(cdf/(R*C)*255);
figure;
plot(normcdf);

for x = 1 : R
   for y = 1 : C
       output(x,y) = normcdf(input(x,y)+1);
   end
end

figure
imshow(output);






