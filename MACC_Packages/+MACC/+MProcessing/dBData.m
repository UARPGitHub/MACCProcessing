function db_data = dBData(linear_data)
    % Extract the maximum value and the index to select the frequency:
    db_data.mean_val = 20.*log10(linear_data.mean_val);
    % Number of observations is same
    db_data.observations = linear_data.observations;
    % Propogation of errors for dB conversion:
    db_data.sd_val = abs(20.*(linear_data.sd_val./(linear_data.mean_val.*log(10))));
    % Calculate standard error from standard deviation:
    db_data.serr_val = db_data.sd_val/sqrt(db_data.observations);
end