ct = 1.0;
gm = 3.0;
input = imread('img01.tif');
imshow(input);
[R C] = size(input);
output = zeros(R,C,'double');

%PowerLaw
for x = 1 : R
   for y = 1 : C
       output(x,y) = ct*power(double(input(x,y)),gm);
       %we need to normalize the values
   end
end

figure, imshow(mat2gray(output));








