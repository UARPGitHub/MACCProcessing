function linear_data = linearRatio(measured_data, reference_data)
    % Extract the maximum value and the index to select the frequency:
    linear_data.mean_val = measured_data.mean_val./reference_data.mean_val;
    % Number of observations are equal to measured observations:
    linear_data.observations = measured_data.observations;
    % Assumption of independence in propogation of errors for meas/ref:
    linear_data.sd_val = abs(linear_data.mean_val).*(sqrt((measured_data.sd_val./measured_data.mean_val).^2 + (reference_data.sd_val./reference_data.mean_val).^2));
    % Calculate standard error from standard deviation:
    linear_data.serr_val = linear_data.sd_val/sqrt(linear_data.observations);
end