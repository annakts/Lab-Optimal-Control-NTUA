% The boundary conditions:
function res = BVP_bc2(ya,yb)
    global x10 x20;
    res = [ya(1) - x10; ya(2) - x20];
end