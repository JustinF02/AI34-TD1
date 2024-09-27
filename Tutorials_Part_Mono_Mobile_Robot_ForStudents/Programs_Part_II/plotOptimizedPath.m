function plotOptimizedPath(trajectory)
    % trajectory is expected to be an Nx2 or Nx3 matrix with X, Y (and possibly Theta or Gamma)
    
    figure; % Open a new figure
    hold on;
    
    % Plot the trajectory
    plot(trajectory(:,1), trajectory(:,2), '-o', 'LineWidth', 2, 'MarkerSize', 5);
    
    % Optionally, add labels or more plotting options
    xlabel('X Position');
    ylabel('Y Position');
    title('Optimized Path of the Robot');
    
    % Format the plot
    grid on;
    axis equal;
    
    hold off;
end
