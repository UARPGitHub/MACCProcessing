%% Load the amplitude spectrums and pressures from h5 file:
% This script loads the average amplitude data directly from file.

% File frequency groups:
PROCEDURE_2_25_MHZ_FREQ = ["1_6MHz","1_8MHz","2_0MHz","2_2MHz","2_4MHz","2_6MHz","2_8MHz"];
PROCEDURE_3_5_MHZ_FREQ = ["2_4MHz","2_6MHz","2_8MHz","3_0MHz","3_2MHz","3_4MHz","3_6MHz","3_8MHz","4_0MHz","4_2MHz","4_4MHz"];
PROCEDURE_5_MHZ_FREQ = ["3_8MHz","4_0MHz","4_2MHz","4_4MHz","4_6MHz","4_8MHz","5_0MHz","5_2MHz","5_4MHz","5_6MHz","5_8MHz","6_0MHz","6_2MHz","6_4MHz"];

% Load pressure calibration data:
T1_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T1_TX.h5'),'/HYDROPHONE/PRESSURE');
T2_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T2_TX.h5'),'/HYDROPHONE/PRESSURE');
T3_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T3_TX.h5'),'/HYDROPHONE/PRESSURE');
T4_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T4_TX.h5'),'/HYDROPHONE/PRESSURE');
T5_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T5_TX.h5'),'/HYDROPHONE/PRESSURE');
T6_TX_REC_P = h5read(strcat(SCRATCH_DIR,'/T6_TX.h5'),'/HYDROPHONE/PRESSURE');

T1_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T1_TX.h5'),'/HYDROPHONE/FREQUENCY');
T2_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T2_TX.h5'),'/HYDROPHONE/FREQUENCY');
T3_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T3_TX.h5'),'/HYDROPHONE/FREQUENCY');
T4_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T4_TX.h5'),'/HYDROPHONE/FREQUENCY');
T5_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T5_TX.h5'),'/HYDROPHONE/FREQUENCY');
T6_TX_REC_F = h5read(strcat(SCRATCH_DIR,'/T6_TX.h5'),'/HYDROPHONE/FREQUENCY');

% Number of experiment repetitions:
NUMBER_REPEATS = 12;

% Load the reference pitch-catch average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T1_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T2_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
        T1_REF_FREQ_0{repeat_num}.tx_central_frequency = T1_TX_REC_F; 
        
        [T2_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T2_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T1_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);
        T2_REF_FREQ_0{repeat_num}.tx_central_frequency = T2_TX_REC_F;    
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T3_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T4_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T3_REF_FREQ_0{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        
        [T4_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T4_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T3_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T4_REF_FREQ_0{repeat_num}.tx_central_frequency = T4_TX_REC_F;    
    end
    
    for freq_num = 1:size(PROCEDURE_5_MHZ_FREQ, 2)
        [T5_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T5_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T5_TX.h5'), ...
                                                        ["T6_RX","REFERENCE", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
        T5_REF_FREQ_0{repeat_num}.tx_central_frequency = T5_TX_REC_F;
        
        [T6_REF_FREQ_0{repeat_num}.amplitude(freq_num, :), T6_REF_FREQ_0{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T6_TX.h5'), ...
                                                        ["T5_RX","REFERENCE", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
        T6_REF_FREQ_0{repeat_num}.tx_central_frequency = T6_TX_REC_F;    
    end
end

% Load the reference  backscatter average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T1_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T1_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
         T1_REF_FREQ_180{repeat_num}.tx_central_frequency = T1_TX_REC_F;  
         
        [T2_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T2_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T2_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
         T2_REF_FREQ_180{repeat_num}.tx_central_frequency = T2_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T3_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T3_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T3_REF_FREQ_180{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        [T4_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T4_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T4_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T4_REF_FREQ_180{repeat_num}.tx_central_frequency = T4_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_5_MHZ_FREQ, 2)
        [T5_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T5_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T5_TX.h5'), ...
                                                        ["T5_RX","REFERENCE", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
         T5_REF_FREQ_180{repeat_num}.tx_central_frequency = T5_TX_REC_F;
         
        [T6_REF_FREQ_180{repeat_num}.amplitude(freq_num, :), T6_REF_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T6_TX.h5'), ...
                                                        ["T6_RX","REFERENCE", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
        T6_REF_FREQ_180{repeat_num}.tx_central_frequency = T6_TX_REC_F;
    end
end

% Load the 1:2500 dilution backscatter average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T1_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T1_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
        T1_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                            
        [T2_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T2_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T2_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
        T2_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T2_TX_REC_F; 
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T3_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T3_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T3_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T3_TX_REC_F; 
        [T4_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T4_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T4_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T4_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T4_TX_REC_F; 
    end
    
    for freq_num = 1:size(PROCEDURE_5_MHZ_FREQ, 2)
        [T5_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T5_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T5_TX.h5'), ...
                                                        ["T5_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
         T5_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T5_TX_REC_F; 
        [T6_MEAS_2500_FREQ_180{repeat_num}.amplitude(freq_num, :), T6_MEAS_2500_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T6_TX.h5'), ...
                                                        ["T6_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
        T6_MEAS_2500_FREQ_180{repeat_num}.tx_central_frequency = T6_TX_REC_F; 
    end
end

% Load the 1:1000 dilution backscatter average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T1_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T1_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
        T1_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                            
        [T2_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T2_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T2_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
        T2_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T2_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T3_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T3_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
         T3_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        [T4_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T4_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T4_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T4_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T4_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_5_MHZ_FREQ, 2)
        [T5_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T5_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T5_TX.h5'), ...
                                                        ["T5_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
         T5_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T5_TX_REC_F;
        [T6_MEAS_1000_FREQ_180{repeat_num}.amplitude(freq_num, :), T6_MEAS_1000_FREQ_180{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T6_TX.h5'), ...
                                                        ["T6_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_5_MHZ_FREQ(freq_num)]);                    
        T6_MEAS_1000_FREQ_180{repeat_num}.tx_central_frequency = T6_TX_REC_F;
    end
end

% Load the reference second harmonic average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_REF_FREQ_225{repeat_num}.amplitude(freq_num, :), T1_REF_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T3_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
         T1_REF_FREQ_225{repeat_num}.tx_central_frequency = T1_TX_REC_F;
        [T1_REF_FREQ_135{repeat_num}.amplitude(freq_num, :), T1_REF_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T5_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);     
         T1_REF_FREQ_135{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                            
        [T2_REF_FREQ_225{repeat_num}.amplitude(freq_num, :), T2_REF_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T4_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);  
        T2_REF_FREQ_225{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                            
        [T2_REF_FREQ_135{repeat_num}.amplitude(freq_num, :), T2_REF_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T6_RX","REFERENCE", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]); 
        T2_REF_FREQ_135{repeat_num}.tx_central_frequency = T2_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_REF_FREQ_90{repeat_num}.amplitude(freq_num, :), T3_REF_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T5_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T3_REF_FREQ_90{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        [T4_REF_FREQ_90{repeat_num}.amplitude(freq_num, :), T4_REF_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T6_RX","REFERENCE", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
        T4_REF_FREQ_90{repeat_num}.tx_central_frequency = T4_TX_REC_F;
    end
    
end

% Load the 1:2500 dilution second harmonic average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_MEAS_2500_FREQ_225{repeat_num}.amplitude(freq_num, :), T1_MEAS_2500_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T3_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
         T1_MEAS_2500_FREQ_225{repeat_num}.tx_central_frequency = T1_TX_REC_F;
        [T1_MEAS_2500_FREQ_135{repeat_num}.amplitude(freq_num, :), T1_MEAS_2500_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T5_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);     
         T1_MEAS_2500_FREQ_135{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                           
        [T2_MEAS_2500_FREQ_225{repeat_num}.amplitude(freq_num, :), T2_MEAS_2500_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T4_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);  
         T2_MEAS_2500_FREQ_225{repeat_num}.tx_central_frequency = T2_TX_REC_F;                                           
        [T2_MEAS_2500_FREQ_135{repeat_num}.amplitude(freq_num, :), T2_MEAS_2500_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T6_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]); 
         T2_MEAS_2500_FREQ_135{repeat_num}.tx_central_frequency = T2_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_MEAS_2500_FREQ_90{repeat_num}.amplitude(freq_num, :), T3_MEAS_2500_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T5_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
         T3_MEAS_2500_FREQ_90{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        [T4_MEAS_2500_FREQ_90{repeat_num}.amplitude(freq_num, :), T4_MEAS_2500_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T6_RX","DILUTION_2500", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
         T4_MEAS_2500_FREQ_90{repeat_num}.tx_central_frequency = T4_TX_REC_F;
    end
    
end

% Load the 1:1000 dilution second harmonic average:
for repeat_num = 1:NUMBER_REPEATS
    
    for freq_num = 1:size(PROCEDURE_2_25_MHZ_FREQ, 2)
        [T1_MEAS_1000_FREQ_225{repeat_num}.amplitude(freq_num, :), T1_MEAS_1000_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T3_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);                    
         T1_MEAS_1000_FREQ_225{repeat_num}.tx_central_frequency = T1_TX_REC_F;
        [T1_MEAS_1000_FREQ_135{repeat_num}.amplitude(freq_num, :), T1_MEAS_1000_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T1_TX.h5'), ...
                                                        ["T5_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);     
         T1_MEAS_1000_FREQ_135{repeat_num}.tx_central_frequency = T1_TX_REC_F;                                           
        [T2_MEAS_1000_FREQ_225{repeat_num}.amplitude(freq_num, :), T2_MEAS_1000_FREQ_225{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T4_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]);  
         T2_MEAS_1000_FREQ_225{repeat_num}.tx_central_frequency = T2_TX_REC_F;                                           
        [T2_MEAS_1000_FREQ_135{repeat_num}.amplitude(freq_num, :), T2_MEAS_1000_FREQ_135{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T2_TX.h5'), ...
                                                        ["T6_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_2_25_MHZ_FREQ(freq_num)]); 
         T2_MEAS_1000_FREQ_135{repeat_num}.tx_central_frequency = T2_TX_REC_F;
    end
    
    for freq_num = 1:size(PROCEDURE_3_5_MHZ_FREQ, 2)
        [T3_MEAS_1000_FREQ_90{repeat_num}.amplitude(freq_num, :), T3_MEAS_1000_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T3_TX.h5'), ...
                                                        ["T5_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
         T3_MEAS_1000_FREQ_90{repeat_num}.tx_central_frequency = T3_TX_REC_F;
        [T4_MEAS_1000_FREQ_90{repeat_num}.amplitude(freq_num, :), T4_MEAS_1000_FREQ_90{repeat_num}.frequency] = ...
            MACC.MProcessing.loadFrequencyDomainAverage(strcat(SCRATCH_DIR,'/T4_TX.h5'), ...
                                                        ["T6_RX","DILUTION_1000", num2str(repeat_num), PROCEDURE_3_5_MHZ_FREQ(freq_num)]);                    
         T4_MEAS_1000_FREQ_90{repeat_num}.tx_central_frequency = T4_TX_REC_F;
    end
    
end
