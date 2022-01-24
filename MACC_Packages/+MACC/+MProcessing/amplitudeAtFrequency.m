function [max_amplitude, frequency_out] = amplitudeAtFrequency(average_frequency, frequency, op_index_start, op_index_end)
    % Extract the value from the amplitude spectrum using the first frequency greater than or equal to the frequency of interest:
    for repeat_itr = 1:length(average_frequency)
        for op_itr = op_index_start:op_index_end
            % Use first experiment repetition for index:
            index = find(average_frequency{1}.frequency >= frequency(op_itr), 1);
            frequency_out(op_itr - op_index_start + 1) = average_frequency{repeat_itr}.frequency(index);
            max_amplitude(repeat_itr, op_itr - op_index_start + 1) = average_frequency{repeat_itr}.amplitude(op_itr, index);
        end
    end
end