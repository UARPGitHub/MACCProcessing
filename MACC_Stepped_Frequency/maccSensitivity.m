%% MACC Sensitivity.
% This script calculates transducer receive sensitivity for use in
% conversions between voltage and pressure.
% For each transmit transducer, extract the amplitude in the frequency
% domain. This corresponds to rms amplitude:
[T1_REF0_A, T1_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T1_REF_FREQ_0, T1_REF_FREQ_0{1}.tx_central_frequency, 1, 7);
[T2_REF0_A, T2_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T2_REF_FREQ_0, T2_REF_FREQ_0{1}.tx_central_frequency, 1, 7);
[T3_REF0_A, T3_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T3_REF_FREQ_0, T3_REF_FREQ_0{1}.tx_central_frequency, 1, 11);
[T4_REF0_A, T4_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T4_REF_FREQ_0, T4_REF_FREQ_0{1}.tx_central_frequency, 1, 11);
[T5_REF0_A, T5_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T5_REF_FREQ_0, T5_REF_FREQ_0{1}.tx_central_frequency, 1, 14);
[T6_REF0_A, T6_REF0_F] = MACC.MProcessing.amplitudeAtFrequency(T6_REF_FREQ_0, T6_REF_FREQ_0{1}.tx_central_frequency, 1, 14);

% Extract the sensitivity using the calibration data and the max amplitude:
T2_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T1_REF0_A, T1_REF0_F, T1_TX_REC_P);
T1_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T2_REF0_A, T2_REF0_F, T2_TX_REC_P);
T4_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T3_REF0_A, T3_REF0_F, T3_TX_REC_P);
T3_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T4_REF0_A, T4_REF0_F, T4_TX_REC_P);
T6_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T5_REF0_A, T5_REF0_F, T5_TX_REC_P);
T5_SENSITIVITY = MACC.MProcessing.receiveSensitivity(T6_REF0_A, T6_REF0_F, T6_TX_REC_P);
