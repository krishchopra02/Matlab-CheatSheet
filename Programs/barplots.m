function barHistograms()
    % Sample data: Student grades in 5 subjects
    students = {'Alice', 'Bob', 'Charlie', 'David', 'Eve'};
    subjects = {'Math', 'Physics', 'Chemistry', 'Biology', 'English'};
    grades = [85 78 92 88 90;
              72 85 79 82 88;
              95 92 88 90 85;
              68 75 82 78 80;
              88 90 85 92 87];
    
    figure('Name', 'Bar Charts and Histograms', 'Position', [100 100 1400 700]);
    
    % Subplot 1: Grouped bar chart
    subplot(2, 3, 1);
    bar(grades);
    title('Student Grades by Subject', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Students', 'FontSize', 12);
    ylabel('Grades', 'FontSize', 12);
    set(gca, 'XTickLabel', students);
    legend(subjects, 'Location', 'best');
    grid on;
    
    % Subplot 2: Stacked bar chart
    subplot(2, 3, 2);
    bar(grades, 'stacked');
    title('Stacked Grades', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Students', 'FontSize', 12);
    ylabel('Total Score', 'FontSize', 12);
    set(gca, 'XTickLabel', students);
    legend(subjects, 'Location', 'best');
    grid on;
    
    % Subplot 3: Horizontal bar chart (average grades)
    subplot(2, 3, 3);
    avg_grades = mean(grades, 2);
    barh(avg_grades, 'FaceColor', [0.2 0.6 0.8]);
    title('Average Grades per Student', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Average Grade', 'FontSize', 12);
    ylabel('Students', 'FontSize', 12);
    set(gca, 'YTickLabel', students);
    grid on;
    
    % Generate random test scores for histogram
    test_scores = [normrnd(75, 10, 1, 100), normrnd(85, 8, 1, 100)];
    
    % Subplot 4: Histogram
    subplot(2, 3, 4);
    histogram(test_scores, 20, 'FaceColor', [0.8 0.4 0.2]);
    title('Distribution of Test Scores', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Score', 'FontSize', 12);
    ylabel('Frequency', 'FontSize', 12);
    grid on;
    
    % Subplot 5: Pie chart
    subplot(2, 3, 5);
    subject_avg = mean(grades, 1);
    pie(subject_avg, subjects);
    title('Average Performance by Subject', 'FontSize', 14, 'FontWeight', 'bold');
    
    % Subplot 6: 3D bar chart
    subplot(2, 3, 6);
    bar3(grades);
    title('3D Grade Visualization', 'FontSize', 14, 'FontWeight', 'bold');
    xlabel('Subjects', 'FontSize', 12);
    ylabel('Students', 'FontSize', 12);
    zlabel('Grades', 'FontSize', 12);
    
    fprintf('Bar charts and histograms created successfully!\n');
end