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
 
function Donnees = VariablesCommandeAttraction(Data)
%Donnees = Donnees = [Ecart; ThetaTilde; Ex; Ey; Theta]; %Ecart Robot-Cible,
global Xd Yd
 
%Etat actuel du Robot Mobile
Xreel = Data(1);
Yreel = Data(2);
Theta = Data(3);
 
Ex = Xd - Xreel; % D�termination des erreurs de position en X
Ey = Yd - Yreel; % D�termination des erreurs de position en Y
Ecart = sqrt((Ex^2)+(Ey^2)); % D�termination de l'�cart entre le robot mobile et le point d�sir�
 
%D�termination de l'angle thetaC (Theta Consigne)
ThetaC = atan2(Ey,Ex); 
%%
%D�termination de l'erreur angulaire (ThetaTilde = ThetaC - Theta)
ThetaTilde=SoustractionAnglesAtan2(ThetaC, Theta);
 
%Param�tres de Commande
Donnees = [Ecart; ThetaTilde; Ex; Ey; Theta];


