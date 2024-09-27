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

function SetVitesse(Obstacle, tVitesse)
%% Affectation de la vitesse de la classe CObstacle

%%Une vitesse est comppos�e d'un module |v| [m/s] et d'une orientation en
%%orientaion [rad entre -pi et pi]
Obstacle.Vitesse = tVitesse; %%tVitesse = [Amplitude Orientation]