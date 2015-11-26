clear 
clc 
close all 

%generating n random numbers between rmax and rmin
%i = 'enter i: \n';
%i = input(i);
%rmax = 'enter rmax: \n';
%rmax = input(rmax);
%rmin = 'enter rmin: \n';
%rmin = input(rmin);

i=135468;
i(1) = [i];
n = 100000; %has to be an even number
rmax = 10;
rmin = 50;

if i >= 1 & i <= 2147483647
for j=1:1:n
    i(j+1) = mod(16807*i(j), 2147483647);
    r(j) = i(j+1)/2147483647*(rmax-rmin)+rmin;
end
else
end


%generating n random numbers between rmax and rmin and using 
%those numbers to generate X and Y coordinates
rmax = 1;
rmin = 0;
if i >= 1 & i <= 2147483647
for j=1:1:n
    i(j+1) = mod(16807*i(j), 2147483647);
    x(j) = i(j+1)/2147483647*(rmax-rmin)+rmin;
    y(j) = i(j+1)/2147483647*(rmax-rmin)+rmin;
end
else
end
for k=1:1:n/2
    X(k)=x(2*k-1);
    Y(k)=x(2*k);
end
plot(X,Y,'r*');


%calculating the integral of sin(x) with random numbers using
%monte carlo integration
rmax = pi;
rmin = 0;
if i >= 1 & i <= 2147483647
for j=1:1:n
    i(j+1) = mod(16807*i(j), 2147483647);
    x(j) = i(j+1)/2147483647*(rmax-rmin)+rmin;
    y(j) = i(j+1)/2147483647*(rmax-rmin)+rmin;
end
else
end
sum=0;
for k=1:1:n/2
    X(k)=x(2*k-1);
    Y(k)=x(2*k);
    f(k)=sin(X(k));
    sum=sum+f(k)*(pi/(n/2));
    
end
integral=sum
% plot(X,Y,'r*');
% p = numel(X)
