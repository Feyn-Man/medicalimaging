function [outputArg1] = calc_vol(img, hdr)
%CALC_VOL
header = hdr;
x = header.dime.pixdim(2) / 10;
y = header.dime.pixdim(3) / 10;
z = header.dime.pixdim(4) / 10;
npix = sum(img ~= 0, 'all');

% Calculate Metabolic Target Volume (in cc)
vol = x * y * z * npix;
outputArg1 = vol;
end

