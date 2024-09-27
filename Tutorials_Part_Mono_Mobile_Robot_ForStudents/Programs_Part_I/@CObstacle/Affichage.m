%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Lounis ADOUANE                                                     %
%% Polytech'Clermont-Ferrand                                          %    
%% D�partement G�nie Electrique (GE3)                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TP Robotique mobile (AURO13)                                       %
%% Partie "Commande du robot et �vitement d�obstacles"                %
%% Th�or�me de stabilit� de Lyapunov et m�thode des cycles-limites    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Derni�re modification le 14/12/2009                                %   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Affichage(Obstacle, iFigure)%(Xobst,Yobst,Robstacle, Rv, iFigure)

global Rrobot

%D�termination de Xobstacle = f(Yobstacle) (contour de l'obstacle r�el)
gamma = [0:0.01:2*pi]';
Xobstacle = Obstacle.Rayon * cos(gamma) + Obstacle.Position(1);
Yobstacle = Obstacle.Rayon * sin(gamma) + Obstacle.Position(2);

%=============================================
% R�gion de d�tection autour de l'obstacle  ||
%=============================================
Xdetection = GetRv(Obstacle) * cos(gamma) + Obstacle.Position(1);
Ydetection = GetRv(Obstacle) * sin(gamma) + Obstacle.Position(2);

%Trac� de l'obstacle
figure(iFigure)
hold on
plot(Obstacle.Position(1),Obstacle.Position(2),'k+','LineWidth',1)
plot(Xobstacle,Yobstacle,'k','LineWidth',2)
plot(Xdetection,Ydetection,'k:','LineWidth',2)
axis equal
grid on