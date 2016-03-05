function Force = coulomblaw(p,r)
%calculates force for charge p with radius r from electron
Force = 8.98 * (10^9) * abs(1.6 * (10^-19) * p) / (r^2);
end

