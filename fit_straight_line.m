function [parameters, model_values] = fit_straight_line(data)
    % Extract x and y values from the data
    x = data(:, 1);
    y = data(:, 2);

    % Fit the data with a straight line
    p = polyfit(x, y, 1);

    % Evaluate the model at the data points
    model_values = polyval(p, x);

    % Plot both the data and the model
    plot(x, y, 'o', x, model_values, '-');
    xlabel('X');
    ylabel('Y');
    legend('Data', 'Model');
    title('Linear Fit');

    % Return the parameters of the straight line
    parameters = p;
end

