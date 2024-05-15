load mse_b;
x = mse_b(:,1);
y = mse_b(:,2);
siz = sqrt(max(size(x)));
x = x(1:siz:max(size(x)));
y = y(1:1:siz);
z = mse_b(:,3);
z = reshape(mse_b(:,3),siz,siz);
figure,mesh(x,y,z);
grid on;
title('LAB13, PART B');
xlabel('x component');
ylabel('y component');
zlabel('MSE/pixel');
print -dps mse_b.ps;