function [amplitude, frequency] = loadFrequencyDomainAverage(h5_filepath, h5_group_map)
    % Iterate over group parts and create the group map string:
    group_str = '';
    for h5_group_part_itr = 1:size(h5_group_map, 2)
        group_str = strcat(group_str, '/', h5_group_map(h5_group_part_itr));
    end
     % Load the amplitude and frequency info:
     amplitude = h5read(h5_filepath, strcat(group_str, '/AMPLITUDE'));
     frequency = h5read(h5_filepath, strcat(group_str, '/FREQUENCY'));
end
