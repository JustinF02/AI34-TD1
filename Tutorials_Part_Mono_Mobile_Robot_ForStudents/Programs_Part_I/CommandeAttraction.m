%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Lounis ADOUANE                                                     %
%% Université de Technologie de Compiègne (UTC)                       %
%% Département Génie Informatique (GI)                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Mini-projet (SY15)                                                 %
%% "Planification et commande des robots mobiles"                     %
%% Théorème de stabilité de Lyapunov et méthode des cycles-limites    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dernière modification le 12/05/2020                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
function CommandeReelle = CommandeAttraction(Donnees)
%Donnees = [Ecart; ThetaTilde; Ex; Ey; ThetaReel];
Ecart = Donnees(1);
ThetaTilde = Donnees(2);
Ex = Donnees(3);
Ey = Donnees(4);
ThetaReel = Donnees(5);
 
%Vmax = 1; %1m/s -> 3.6km/h
Vmax = 0.5;
 
if (gt(Ecart,0.2)) % Pour appliquer cette commande uniquement quand le robot n'est pas tout près de la cible
    %%La position du point effectif (disposé sur le robot) à asservir sur la consigne
    l1 = 0.4; %Selon l'axe x (Devant le robot)
    l2 = 0;   %Selon l'axe y (A côté du robot)
    K1 = 0.1; 
    K2 = 0.1; 
    V1 =  K1*Ex; 
    V2 =  K2*Ey;
    %%
    
    K = [K1 0; 0 K2];
    M = [cos(ThetaReel) -l1*sin(ThetaReel); sin(ThetaReel) l1*cos(ThetaReel)];
    Commande = K * inv(M) * [Ex; Ey];

    %%
    V = Vmax; 
    W = Commande(2);
else
    V = 0;
    W = 0;
end
 
ValeurFonctionLyapunov = 0.5*(Ex^2+Ey^2);
CommandeReelle = [V, W, ValeurFonctionLyapunov];
