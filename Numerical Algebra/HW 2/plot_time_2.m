x = zeros(91,1);
t = zeros(91,1);
err = zeros(91,1);
for N = 1:91
    x(N)=N+8;
    [u1,t(N)]=poisson_choice(@f,N+8,'gauss_band');
    err(N) = norm(u1-real_sol(N+8),inf);
end
hold off
plot(x,t)%�������ǽ�����������ʱ����룬����������ɸ�Ϊ
%plot(x,err)
hold on
scatter(x,t)
xlabel('ÿһ����������Ŀ')
ylabel('ʱ��/��')
title('��״Gauss��ȥ')%����Ҫ���ı䡣
hold off