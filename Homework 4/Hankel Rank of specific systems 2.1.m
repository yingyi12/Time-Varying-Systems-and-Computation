load("impulse_response.mat")
% t Time
% h Impulse Response

%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

H_48 = hankel(h(1:48)); 
H_512 = hankel(h(1:512));
H_1024 = hankel(h(1:1024)); 


% Plot for 48 Samples
subplot(1,3,1)
[U,S,V]=svd(H_48);

semilogx(S)


title("48 Samples")
xlabel("Singular Value")
ylabel("Magnitude")
axis([0 100 0 1])
grid


%Plot for 512 Samples
subplot(1,3,2)


[U,S,V]=svd(H_512);

semilogx(S)


title("512 Samples")
xlabel("Singular Value")
ylabel("Magnitude")
axis([0 100 0 1])
grid

%Plot for 1024 Samples
subplot(1,3,3)

[U,S,V]=svd(H_1024);

semilogx(S)

title("1024 Samples")
xlabel("Singular Value")
ylabel("Magnitude")
axis([0 100 0 1])
grid
