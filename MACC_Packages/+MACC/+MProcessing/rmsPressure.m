function rms = rmsPressure(amplitude_spectrum, sensitivity)
    % Loop through the amplitude spectrum and convert to amplitude spectrum:
    for iteration_number = 1:length(amplitude_spectrum)
         % interpolate the recorded sensitivity to match amplitude
         % frequencies:
         receiver_sensitivity = interp1(sensitivity.frequency,sensitivity.amplitude,amplitude_spectrum{iteration_number}.frequency,'linear', 0);
         % find first non zero index and set indices to same upto this
         % point:
         index = find(receiver_sensitivity> 0, 1, 'first');
         receiver_sensitivity(1:index) = receiver_sensitivity(index);
         % find last non zero index and set indices to same upto this
         % point:
         index = find(receiver_sensitivity> 0, 1, 'last');
         receiver_sensitivity(index:end) = receiver_sensitivity(index);
         % Store the rms pressure spectrum for the interation:
         rms{iteration_number}.amplitude = receiver_sensitivity .*amplitude_spectrum{iteration_number}.amplitude;
         rms{iteration_number}.frequency = amplitude_spectrum{iteration_number}.frequency;
    end
end