function best_fit_order = find_best_fit_order(x, y, max_order)
    % Initialize variables
    min_sum_of_squares = Inf;
    best_fit_order = 0;

    % Loop through polynomial orders
    for order = 1:max_order
        % Fit the data with a polynomial of the current order
        p = polyfit(x, y, order);

        % Evaluate the model at the data points
        model_values = polyval(p, x);

        % Calculate sum of squares of residuals
        sum_of_squares = sum((y - model_values).^2);

        % Update best fit order if the current order has lower sum of squares
        if sum_of_squares < min_sum_of_squares
            min_sum_of_squares = sum_of_squares;
            best_fit_order = order;
        end
    end
end

