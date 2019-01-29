
x0 = [0.3; -0.4]; 
parms = struct('alpha', 0.3, 'rgyr', 0, 'gamma', 0.04, 'tmax', 5);

[xe,te,xs,ts,energies]  = rimlesswheelstance(x0, parms);
figure
subplot(211)
plot(ts,xs(:,2));
ylabel('Theta dot'); 
yyaxis right; 
plot(ts,xs(:,2))
ylabel('Theta dot dot') 
xlabel('Time') 

subplot(212)
plot(ts, energies(:,1))
xlabel('Time') 
ylabel('Energy')

