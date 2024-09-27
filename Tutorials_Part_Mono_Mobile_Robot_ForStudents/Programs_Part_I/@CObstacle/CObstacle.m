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

function Obstacle = CObstacle(Position, Rayon, Marge, Vitesse)
% CObstacle class constructor
% Cr�er un Obstacle avec les param�tres d'entr�e
global Rrobot

if nargin == 0
    Obstacle.Position = [0 0];
    Obstacle.Vitesse = [0 0];
    Obstacle.Rayon = 0;
    Obstacle.Marge = 0;
    Obstacle.Rv = 0;
    Obstacle = class(Obstacle,'CObstacle');
else
    Obstacle.Position = Position;
    Obstacle.Vitesse = Vitesse;
    Obstacle.Rayon = Rayon;
    Obstacle.Marge = Marge;
    Obstacle.Rv = Rrobot + Rayon + Marge;
    Obstacle = class(Obstacle, 'CObstacle');
end
