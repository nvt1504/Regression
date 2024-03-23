function [parameters, model_values, residuals] = fit_straight_line_with_residuals(data)
    % Extract x and y values from the data
    x = data(:, 1);
    y = data(:, 2);

    % Fit the data with a straight line
    p = polyfit(x, y, 1);

    % Evaluate the model at the data points
    model_values = polyval(p, x);

    % Calculate residuals
    residuals = y - model_values;

    % Plot both the data and the model
    subplot(2,1,1);
    plot(x, y, 'o', x, model_values, '-');
    xlabel('X');
    ylabel('Y');
    legend('Data', 'Model');
    title('Linear Fit');

    % Plot the residuals as a bar graph
    subplot(2,1,2);
    bar(x, residuals);
    xlabel('X');
    ylabel('Residuals');
    title('Residuals of the Linear Fit');

    % Return the parameters of the straight line
    parameters = p;
end

