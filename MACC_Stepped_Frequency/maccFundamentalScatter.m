%% MACC Fundamental Backscatter.
% This script calculates the fundamental backscatter.

% Calculate the RMS pressure spectrum by using the sensitivity:
T1_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T1_MEAS_2500_FREQ_180, T1_SENSITIVITY);
T2_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T2_MEAS_2500_FREQ_180, T2_SENSITIVITY);
T3_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T3_MEAS_2500_FREQ_180, T3_SENSITIVITY);
T4_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T4_MEAS_2500_FREQ_180, T4_SENSITIVITY);
T5_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T5_MEAS_2500_FREQ_180, T5_SENSITIVITY);
T6_MEAS_2500_P_180 = MACC.MProcessing.rmsPressure(T6_MEAS_2500_FREQ_180, T6_SENSITIVITY);

T1_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T1_MEAS_1000_FREQ_180, T1_SENSITIVITY);
T2_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T2_MEAS_1000_FREQ_180, T2_SENSITIVITY);
T3_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T3_MEAS_1000_FREQ_180, T3_SENSITIVITY);
T4_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T4_MEAS_1000_FREQ_180, T4_SENSITIVITY);
T5_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T5_MEAS_1000_FREQ_180, T5_SENSITIVITY);
T6_MEAS_1000_P_180 = MACC.MProcessing.rmsPressure(T6_MEAS_1000_FREQ_180, T6_SENSITIVITY);

% Calculate the pressure at the frequency of interest:
[T1_MEAS_2500_180_P, T1_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_P_180, T1_REF_0_F, 1, 7);
[T2_MEAS_2500_180_P, T2_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_P_180, T2_REF_0_F, 1, 7);
[T3_MEAS_2500_180_P, T3_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_2500_P_180, T3_REF_0_F, 1, 11);
[T4_MEAS_2500_180_P, T4_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_2500_P_180, T4_REF_0_F, 1, 11);
[T5_MEAS_2500_180_P, T5_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T5_MEAS_2500_P_180, T5_REF_0_F, 1, 14);
[T6_MEAS_2500_180_P, T6_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T6_MEAS_2500_P_180, T6_REF_0_F, 1, 14);

[T1_MEAS_1000_180_P, T1_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_P_180, T1_REF_0_F, 1, 7);
[T2_MEAS_1000_180_P, T2_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_P_180, T2_REF_0_F, 1, 7);
[T3_MEAS_1000_180_P, T3_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_1000_P_180, T3_REF_0_F, 1, 11);
[T4_MEAS_1000_180_P, T4_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_1000_P_180, T4_REF_0_F, 1, 11);
[T5_MEAS_1000_180_P, T5_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T5_MEAS_1000_P_180, T5_REF_0_F, 1, 14);
[T6_MEAS_1000_180_P, T6_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T6_MEAS_1000_P_180, T6_REF_0_F, 1, 14);

% Calculate the statistics for the experimental data:
T1_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T1_MEAS_2500_180_P);
T2_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T2_MEAS_2500_180_P);
T3_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T3_MEAS_2500_180_P);
T4_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T4_MEAS_2500_180_P);
T5_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T5_MEAS_2500_180_P);
T6_MEAS_2500_STATS_180 = MACC.MProcessing.experimentStatistics(T6_MEAS_2500_180_P);

T1_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T1_MEAS_1000_180_P);
T2_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T2_MEAS_1000_180_P);
T3_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T3_MEAS_1000_180_P);
T4_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T4_MEAS_1000_180_P);
T5_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T5_MEAS_1000_180_P);
T6_MEAS_1000_STATS_180 = MACC.MProcessing.experimentStatistics(T6_MEAS_1000_180_P);

T1_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T1_REF_0_P);
T2_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T2_REF_0_P);
T3_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T3_REF_0_P);
T4_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T4_REF_0_P);
T5_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T5_REF_0_P);
T6_REF_STATS_180 = MACC.MProcessing.experimentStatistics(T6_REF_0_P);

% Calculate the linear ratio:
T1_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T1_MEAS_2500_STATS_180, T1_REF_STATS_180);
T2_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T2_MEAS_2500_STATS_180, T2_REF_STATS_180);
T3_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T3_MEAS_2500_STATS_180, T3_REF_STATS_180);
T4_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T4_MEAS_2500_STATS_180, T4_REF_STATS_180);
T5_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T5_MEAS_2500_STATS_180, T5_REF_STATS_180);
T6_MEAS_2500_LIN_180 = MACC.MProcessing.linearRatio(T6_MEAS_2500_STATS_180, T6_REF_STATS_180);

T1_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T1_MEAS_1000_STATS_180, T1_REF_STATS_180);
T2_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T2_MEAS_1000_STATS_180, T2_REF_STATS_180);
T3_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T3_MEAS_1000_STATS_180, T3_REF_STATS_180);
T4_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T4_MEAS_1000_STATS_180, T4_REF_STATS_180);
T5_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T5_MEAS_1000_STATS_180, T5_REF_STATS_180);
T6_MEAS_1000_LIN_180 = MACC.MProcessing.linearRatio(T6_MEAS_1000_STATS_180, T6_REF_STATS_180);

% Calculate dB data:
T1_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T1_MEAS_2500_LIN_180);
T2_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T2_MEAS_2500_LIN_180);
T3_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T3_MEAS_2500_LIN_180);
T4_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T4_MEAS_2500_LIN_180);
T5_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T5_MEAS_2500_LIN_180);
T6_MEAS_2500_DB_180 = MACC.MProcessing.dBData(T6_MEAS_2500_LIN_180);

T1_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T1_MEAS_1000_LIN_180);
T2_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T2_MEAS_1000_LIN_180);
T3_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T3_MEAS_1000_LIN_180);
T4_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T4_MEAS_1000_LIN_180);
T5_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T5_MEAS_1000_LIN_180);
T6_MEAS_1000_DB_180 = MACC.MProcessing.dBData(T6_MEAS_1000_LIN_180);

% Plot dB data:
figure;

subplot(2,1,1)
hold on;
errorbar(T1_MEAS_1000_180_F.*1e-6, T1_MEAS_1000_DB_180.mean_val, T1_MEAS_1000_DB_180.serr_val, '-o', 'Color',[0.00,0.45,0.74], 'LineWidth', 1);
errorbar(T2_MEAS_1000_180_F.*1e-6, T2_MEAS_1000_DB_180.mean_val, T2_MEAS_1000_DB_180.serr_val, '-+', 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
errorbar(T3_MEAS_1000_180_F.*1e-6, T3_MEAS_1000_DB_180.mean_val, T3_MEAS_1000_DB_180.serr_val, '-*', 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
errorbar(T4_MEAS_1000_180_F.*1e-6, T4_MEAS_1000_DB_180.mean_val, T4_MEAS_1000_DB_180.serr_val, '-d', 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
errorbar(T5_MEAS_1000_180_F.*1e-6, T5_MEAS_1000_DB_180.mean_val, T5_MEAS_1000_DB_180.serr_val, '-x', 'Color',[0.30,0.75,0.93], 'LineWidth', 1);
errorbar(T6_MEAS_1000_180_F.*1e-6, T6_MEAS_1000_DB_180.mean_val, T6_MEAS_1000_DB_180.serr_val, '-s', 'Color',[0.64,0.08,0.18], 'LineWidth', 1);

H=gca;
H.LineWidth = 1;
H.FontSize = 12;
title("(a)");
xlabel('Frequency (MHz)', 'FontSize', 12);
ylabel('Scattering (dB)', 'FontSize', 12);
legend('T1 Tx, T1 Rx','T2 Tx, T2 Rx','T3 Tx, T3 Rx', ...
       'T4 Tx, T4 Rx','T5 Tx, T5 Rx','T6 Tx, T6 Rx', ...
       'FontSize', 12);
   
subplot(2,1,2)
hold on;
ax.ColorOrderIndex = 1;

errorbar(T1_MEAS_2500_180_F.*1e-6, T1_MEAS_2500_DB_180.mean_val, T1_MEAS_2500_DB_180.serr_val, '--o', 'Color',[0.00,0.45,0.74], 'LineWidth', 1);
errorbar(T2_MEAS_2500_180_F.*1e-6, T2_MEAS_2500_DB_180.mean_val, T2_MEAS_2500_DB_180.serr_val, '--+', 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
errorbar(T3_MEAS_2500_180_F.*1e-6, T3_MEAS_2500_DB_180.mean_val, T3_MEAS_2500_DB_180.serr_val, '--*', 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
errorbar(T4_MEAS_2500_180_F.*1e-6, T4_MEAS_2500_DB_180.mean_val, T4_MEAS_2500_DB_180.serr_val, '--d', 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
errorbar(T5_MEAS_2500_180_F.*1e-6, T5_MEAS_2500_DB_180.mean_val, T5_MEAS_2500_DB_180.serr_val, '--x', 'Color',[0.30,0.75,0.93], 'LineWidth', 1);
errorbar(T6_MEAS_2500_180_F.*1e-6, T6_MEAS_2500_DB_180.mean_val, T6_MEAS_2500_DB_180.serr_val, '--s', 'Color',[0.64,0.08,0.18], 'LineWidth', 1);

H=gca;
H.LineWidth = 1;
H.FontSize = 12;
title("(b)");
xlabel('Frequency (MHz)', 'FontSize', 12);
ylabel('Scattering (dB)', 'FontSize', 12);
legend('T1 Tx, T1 Rx','T2 Tx, T2 Rx','T3 Tx, T3 Rx', ...
       'T4 Tx, T4 Rx','T5 Tx, T5 Rx','T6 Tx, T6 Rx', ...
       'FontSize', 12);
