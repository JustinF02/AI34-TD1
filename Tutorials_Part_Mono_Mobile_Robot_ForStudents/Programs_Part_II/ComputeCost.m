function cost = ComputeCost(trajectory)
    % Compute the total distance of the trajectory
    % trajectory is expected to be an Nx2 or Nx3 matrix with [X, Y] or [X, Y, Theta]
    
    % Initialize the cost
    cost = 0;
    
    % Loop through each point in the trajectory
    for i = 1:(size(trajectory, 1) - 1)
        % Calculate the Euclidean distance between consecutive points
        dist = sqrt((trajectory(i+1, 1) - trajectory(i, 1))^2 + ...
                    (trajectory(i+1, 2) - trajectory(i, 2))^2);
        
        % Sum the distances to get the total cost
        cost = cost + dist;
    end
end
