%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Lounis ADOUANE                                                     %
%% Universit� de Technologie de Compi�gne (UTC)                       %
%% D�partement G�nie Informatique (GI)                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mini-projet (SY15)                                                 %
%% "Planification et commande des robots mobiles"                     %
%% Th�or�me de stabilit� de Lyapunov et m�thode des cycles-limites    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Derni�re modification le 12/05/2020                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function CommandeReelle = CommandeEvitement(Donnees)
%%Donnees = [ThetaTilde; ThetaC_p];

ThetaTilde = Donnees(1);
ThetaC_p = Donnees(2);
Y_Prime = Donnees(3);

%Vmax = 1; %1m/s -> 3.6km/h
Vmax = 0.5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Premier type de commande 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Kp = 15; 
V = Vmax;
W = Kp * ThetaC_p * Y_Prime;

ValeurFonctionLyapunov = 0.5*rad2deg(ThetaTilde)^2/10; 

CommandeReelle = [V, W, ValeurFonctionLyapunov];
