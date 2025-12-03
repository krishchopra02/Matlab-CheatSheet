function 3DPlots()
    % Create meshgrid for 3D plotting
    [X, Y] = meshgrid(-5:0.2:5, -5:0.2:5);
    
    % Calculate different surfaces
    Z1 = X.^2 + Y.^2;  % Paraboloid
    Z2 = sin(sqrt(X.^2 + Y.^2));  % Ripple
    Z3 = X.*exp(-X.^2 - Y.^2);  % Gaussian
    
    figure('Name', '3D Plots', 'Position', [100 100 1400 900]);
    
    % Subplot 1: Surface plot
    subplot(2, 3, 1);
    surf(X, Y, Z1);
    title('Surface: Paraboloid', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    zlabel('Z', 'FontSize', 12);
    colorbar;
    shading interp;
    
    % Subplot 2: Mesh plot
    subplot(2, 3, 2);
    mesh(X, Y, Z1);
    title('Mesh: Paraboloid', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    zlabel('Z', 'FontSize', 12);
    colorbar;
    
    % Subplot 3: Contour plot
    subplot(2, 3, 3);
    contour(X, Y, Z1, 20);
    title('Contour: Paraboloid', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    colorbar;
    
    % Subplot 4: Ripple surface
    subplot(2, 3, 4);
    surf(X, Y, Z2);
    title('Ripple Function', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    zlabel('Z', 'FontSize', 12);
    colorbar;
    shading interp;
    
    % Subplot 5: 3D line plot (spiral)
    subplot(2, 3, 5);
    t = linspace(0, 10*pi, 1000);
    x_spiral = t .* cos(t);
    y_spiral = t .* sin(t);
    z_spiral = t;
    plot3(x_spiral, y_spiral, z_spiral, 'LineWidth', 2);
    title('3D Spiral', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    zlabel('Z', 'FontSize', 12);
    grid on;
    
    % Subplot 6: Filled contour
    subplot(2, 3, 6);
    contourf(X, Y, Z3, 20);
    title('Filled Contour: Gaussian', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    colorbar;
    
    fprintf('3D plots created successfully!\n');
end
