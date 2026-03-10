dydt = @(t,y) [0, 1; -25, -26]*y+[0; cos(t)];
tnull = 0;
ynull = 1;
ysnull = 0;
t=linspace(tnull,tnull+20,160); % Zeitpunkte
options = odeset('RelTol',1e-8,'AbsTol',1e-10); % Erhoehte Rechengenauigkeit
sol = ode45(dydt,t,[ynull, ysnull],options); % Numerische Loesung
T = sol.x';
ynum = sol.y(1,:)';
disp(sol.stats.nsteps); %Anzahl der Berechnungsschritte
figure(1);
clf;
plot(T,ynum(:,1),'rs',...
'DisplayName','Numerisch');