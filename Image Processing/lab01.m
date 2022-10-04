input = imread('img01.tif');

imshow(input);

[R C] = size(input);
output = zeros(R,C,'uint8');

%Negative
for x = 1 : R
   for y = 1 : C
       output(x,y) = 255 - input(x,y);
   end
end

figure, imshow(output);








