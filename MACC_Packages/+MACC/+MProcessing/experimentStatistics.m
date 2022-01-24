function stats = experimentStatistics(dataset)
    % Calculate mean from all observations:
    stats.mean_val = mean(dataset);
    % Set number of observations:
    stats.observations = size(dataset,1);
    % Calculate standard deviation:
    stats.sd_val = std(dataset);
    % Calculate the standard error:
    stats.serr_val= stats.sd_val./sqrt(stats.observations);
end