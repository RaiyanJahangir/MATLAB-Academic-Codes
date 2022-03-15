clc;
clear;
close all; 

Din = 'Forouzan'

Din = dec2hex(Din)

Din = reshape(Din', [], 4)
Din = Din'

%Sender End 

Din_sender = [Din; '0000']

Sum = dec2hex(sum(hex2dec(Din_sender)))

len = length(Sum)

partial_sum = Sum(len-3:len)
carry = Sum(1:len-4)

Sum = dec2hex(hex2dec(partial_sum) + hex2dec(carry))

checksum = dec2hex(hex2dec('FFFF') - hex2dec(Sum))



%Receiver End

%checksum = '7039'

Din_receiver = [Din;checksum]

Sum = dec2hex(sum(hex2dec(Din_receiver)))

len = length(Sum)

partial_sum = Sum(len-3:len)
carry = Sum(1:len-4)

Sum = dec2hex(hex2dec(partial_sum) + hex2dec(carry))

checksum = dec2hex(hex2dec('FFFF') - hex2dec(Sum))
