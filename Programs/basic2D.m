function trigPlots()
    % Create x values from 0 to 4*pi
    x = linspace(0, 4*pi, 1000);
    
    % Calculate y values for different functions
    y1 = sin(x);
    y2 = cos(x);
    y3 = sin(x) .* cos(x);
    y4 = sin(x).^2;
    
    % Create figure with subplots
    figure('Name', 'Trigonometric Functions', 'Position', [100 100 1200 800]);
    
    % Subplot 1: Sine wave
    subplot(2, 2, 1);
    plot(x, y1, 'b-', 'LineWidth', 2);
    grid on;
    title('Sine Wave', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('x (radians)', 'FontSize', 12);
    ylabel('sin(x)', 'FontSize', 12);
    
    % Subplot 2: Cosine wave
    subplot(2, 2, 2);
    plot(x, y2, 'r-', 'LineWidth', 2);
    grid on;
    title('Cosine Wave', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('x (radians)', 'FontSize', 12);
    ylabel('cos(x)', 'FontSize', 12);
    
    % Subplot 3: Product of sine and cosine
    subplot(2, 2, 3);
    plot(x, y3, 'g-', 'LineWidth', 2);
    grid on;
    title('sin(x) × cos(x)', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('x (radians)', 'FontSize', 12);
    ylabel('sin(x)cos(x)', 'FontSize', 12);
    
    % Subplot 4: Multiple plots on same axes
    subplot(2, 2, 4);
    plot(x, y1, 'b-', 'LineWidth', 2); hold on;
    plot(x, y2, 'r--', 'LineWidth', 2);
    plot(x, y4, 'm:', 'LineWidth', 2); hold off;
    grid on;
    title('Multiple Functions', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('x (radians)', 'FontSize', 12);
    ylabel('y', 'FontSize', 12);
    legend('sin(x)', 'cos(x)', 'sin²(x)', 'Location', 'best');
    
    fprintf('Trigonometric plots created successfully!\n');
end

