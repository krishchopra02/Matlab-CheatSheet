function scatterPlots()
    % Generate sample data: Study hours vs Exam scores
    study_hours = [2 3 4 5 6 7 8 9 10 12 13 15 16 18 20];
    exam_scores = [45 50 55 60 65 70 75 80 85 88 90 92 94 95 96];
    % Add some noise
    exam_scores = exam_scores + randn(size(exam_scores)) * 3;
    
    % Generate data with different correlations
    x = linspace(0, 10, 50);
    y_positive = 2*x + randn(size(x))*2;  % Positive correlation
    y_negative = -2*x + 20 + randn(size(x))*2;  % Negative correlation
    y_none = randn(size(x))*5 + 10;  % No correlation
    
    figure('Name', 'Scatter Plots', 'Position', [100 100 1400 800]);
    
    % Subplot 1: Basic scatter plot
    subplot(2, 3, 1);
    scatter(study_hours, exam_scores, 100, 'filled');
    title('Study Hours vs Exam Scores', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Study Hours', 'FontSize', 12);
    ylabel('Exam Score', 'FontSize', 12);
    grid on;
    
    % Subplot 2: Scatter with trend line
    subplot(2, 3, 2);
    scatter(study_hours, exam_scores, 100, 'filled'); hold on;
    p = polyfit(study_hours, exam_scores, 1);  % Linear fit
    y_fit = polyval(p, study_hours);
    plot(study_hours, y_fit, 'r-', 'LineWidth', 2);
    title('With Trend Line', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Study Hours', 'FontSize', 12);
    ylabel('Exam Score', 'FontSize', 12);
    legend('Data', 'Trend Line', 'Location', 'best');
    grid on;
    hold off;
    
    % Subplot 3: Color-coded scatter
    subplot(2, 3, 3);
    scatter(study_hours, exam_scores, 100, exam_scores, 'filled');
    colorbar;
    title('Color-Coded by Score', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Study Hours', 'FontSize', 12);
    ylabel('Exam Score', 'FontSize', 12);
    grid on;
    
    % Subplot 4: Positive correlation
    subplot(2, 3, 4);
    scatter(x, y_positive, 50, 'filled', 'MarkerFaceColor', [0.2 0.6 0.8]);
    title('Positive Correlation', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    grid on;
    
    % Subplot 5: Negative correlation
    subplot(2, 3, 5);
    scatter(x, y_negative, 50, 'filled', 'MarkerFaceColor', [0.8 0.2 0.2]);
    title('Negative Correlation', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    grid on;
    
    % Subplot 6: No correlation
    subplot(2, 3, 6);
    scatter(x, y_none, 50, 'filled', 'MarkerFaceColor', [0.2 0.8 0.2]);
    title('No Correlation', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('X', 'FontSize', 12);
    ylabel('Y', 'FontSize', 12);
    grid on;
    
    fprintf('Scatter plots created successfully!\n');
end
