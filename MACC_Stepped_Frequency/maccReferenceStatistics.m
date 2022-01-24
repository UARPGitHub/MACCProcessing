%% MACC Reference Statistics.
% This script calculates the statistics for the reference data which can be
% combined with statistics from scattering measurements in subsequent
% scripts.
%% Calculate the RMS pressure spectrum:
T1_REF_P_0 = MACC.MProcessing.rmsPressure(T1_REF_FREQ_0, T2_SENSITIVITY);
T2_REF_P_0 = MACC.MProcessing.rmsPressure(T2_REF_FREQ_0, T1_SENSITIVITY);
T3_REF_P_0 = MACC.MProcessing.rmsPressure(T3_REF_FREQ_0, T4_SENSITIVITY);
T4_REF_P_0 = MACC.MProcessing.rmsPressure(T4_REF_FREQ_0, T3_SENSITIVITY);
T5_REF_P_0 = MACC.MProcessing.rmsPressure(T5_REF_FREQ_0, T6_SENSITIVITY);
T6_REF_P_0 = MACC.MProcessing.rmsPressure(T6_REF_FREQ_0, T5_SENSITIVITY);

%% Calculate the maximum power spectrum and the frequency at which it occurs:
[T1_REF_0_P, T1_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T1_REF_P_0, T1_REF_FREQ_0{1}.tx_central_frequency, 1, 7);
[T2_REF_0_P, T2_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T2_REF_P_0, T2_REF_FREQ_0{1}.tx_central_frequency, 1, 7);
[T3_REF_0_P, T3_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T3_REF_P_0, T3_REF_FREQ_0{1}.tx_central_frequency, 1, 11);
[T4_REF_0_P, T4_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T4_REF_P_0, T4_REF_FREQ_0{1}.tx_central_frequency, 1, 11);
[T5_REF_0_P, T5_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T5_REF_P_0, T5_REF_FREQ_0{1}.tx_central_frequency, 1, 14);
[T6_REF_0_P, T6_REF_0_F] = MACC.MProcessing.amplitudeAtFrequency(T6_REF_P_0, T6_REF_FREQ_0{1}.tx_central_frequency, 1, 14);

%% Calculate statistics from the max power spectrums:
T1_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T1_REF_0_P);
T2_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T2_REF_0_P);
T3_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T3_REF_0_P);
T4_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T4_REF_0_P);
T5_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T5_REF_0_P);
T6_REF_STATS_0 = MACC.MProcessing.experimentStatistics(T6_REF_0_P);
