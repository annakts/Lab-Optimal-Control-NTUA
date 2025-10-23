function dxdt = BVP_ode4(time,x)
    global k1 k2 k3 ut T samples p12t p22t x1_opt x2_opt R Imin Imax
    index = max(ceil(time*samples/T),1); 
    y = [x(1) - x1_opt(index); x(2) - x2_opt(index)];
    v = -(1/R)*(p12t(index)*y(1) + p22t(index)*y(2));
    u = ut(index) + v;
    u = min(max(u,Imin),Imax);
    dxdt = [x(2); -k2*x(2)^2-k1*x(2)+k3*u];
end