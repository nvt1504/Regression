function [best_params, min_error] = fit_exponential_model(x, y, initial_guess)
    % Define objective function
    obj_func = @(params) sum((y - params(1) * (1 - exp(-params(2) * x))).^2);

    % Perform minimization using fminsearch
    [best_params, min_error] = fminsearch(obj_func, initial_guess);

    % Plot the best model prediction and the data
    x_vals = linspace(min(x), max(x), 100);
    y_pred = best_params(1) * (1 - exp(-best_params(2) * x_vals));

    plot(x, y, 'o', x_vals, y_pred, '-');
    xlabel('X');
    ylabel('Y');
    legend('Data', 'Best Fit Model');
    title('Exponential Model Fit');
end

