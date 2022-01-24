function sensitivity = receiveSensitivity(dataset, frequency, recorded_pressure)
    % Calculate the sensitivity in Pa/Sample:
    dataset = recorded_pressure./dataset;
    % Calculate the mean:
    sensitivity.amplitude = mean(dataset);
    sensitivity.frequency = frequency;
end