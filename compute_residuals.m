function sum_of_squares = compute_residuals(data)
    % Extract x and y values from the data
    x = data(:, 1);
    y = data(:, 2);

    % Fit the data with a straight line
    p = polyfit(x, y, 1);

    % Evaluate the model at the data points
    model_values = polyval(p, x);

    % Calculate residuals
    residuals = y - model_values;

    % Compute sum of squares of residuals
    sum_of_squares = sum(residuals.^2);
end

