x = zeros(10,1);
t = zeros(10,1);
err = zeros(10,1);
for N = 1:10
    x(N)=10*N-1;
    [u1,t(N)]=poisson_choice(@f,10*N-1,'gauss');
    err(N) = norm(u1-real_sol(10*N-1),inf);
end
hold off
plot(x,t)%�������ǽ�����������ʱ����룬����������ɸ�Ϊ
%plot(x,err)
hold on
scatter(x,t)
xlabel('ÿһ����������Ŀ')
ylabel('ʱ��/��')
title('Gauss��ȥ')%����Ҫ���ı䡣
hold off
