function [parameters, model_values, residuals, sum_of_squares] = fit_polynomial(data, degree)
    % Extract x and y values from the data
    x = data(:, 1);
    y = data(:, 2);

    % Fit the data with a polynomial of specified degree
    p = polyfit(x, y, degree);

    % Evaluate the model at the data points
    model_values = polyval(p, x);

    % Calculate residuals
    residuals = y - model_values;

    % Calculate sum of squares of residuals
    sum_of_squares = sum(residuals.^2);

    % Plot both the data and the model
    subplot(3,1,1);
    plot(x, y, 'o', x, model_values, '-');
    xlabel('X');
    ylabel('Y');
    legend('Data', 'Model');
    title(['Polynomial Fit (Degree ' num2str(degree) ')']);

    % Plot the residuals as a bar graph
    subplot(3,1,2);
    bar(x, residuals);
    xlabel('X');
    ylabel('Residuals');
    title('Residuals');

    % Plot the sum of squares of residuals
    subplot(3,1,3);
    bar(1, sum_of_squares);
    xlabel('Polynomial Degree');
    ylabel('Sum of Squares of Residuals');
    title('Sum of Squares of Residuals');

    % Return the parameters of the polynomial
    parameters = p;
end

