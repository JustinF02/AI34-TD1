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

function ThetaTilde=SoustractionAnglesAtan2(ThetaC, Theta)
%Fonction pour faire de la soustraction d'angles afin d'avoir toujours un
%angle exprim� dans [-pi pi]

if le(ThetaC, 0) %ThetaC<=0 %Exprimer l'angle toujours en positif (0�->2pi)
    ThetaC=(2*pi)+ThetaC;
end

if le(Theta, 0)% Si Theta<=0
    Theta=(2*pi)+Theta;
end

ThetaTilde = ThetaC - Theta;

if ge(ThetaTilde,pi) %Si ThetaTilde >= pi %Exprimer l'angle (compris entre -pi et pi)
    ThetaTilde = -((2*pi)-ThetaTilde);
end

if le(ThetaTilde,-pi) %Si ThetaTilde >= pi %Exprimer l'angle (compris entre -pi et pi)
    ThetaTilde = ((2*pi)+ThetaTilde);
end

if (le(ThetaTilde, -pi) || gt(ThetaTilde, pi));
    disp('ATTENTION ANGLES THETA_Tilde');
    ThetaC
    Theta
    ThetaTilde
end