load mse_a;
x = mse_a(:,1);
y = mse_a(:,2);
siz = sqrt(max(size(x)));
x = x(1:siz:max(size(x)));
y = y(1:1:siz);
z = mse_a(:,3);
z = reshape(mse_a(:,3),siz,siz);
figure,mesh(x,y,z);
grid on;
title('LAB13, PART A');
xlabel('x component');
ylabel('y component');
zlabel('MSE/pixel');
print -dps mse_a.ps;