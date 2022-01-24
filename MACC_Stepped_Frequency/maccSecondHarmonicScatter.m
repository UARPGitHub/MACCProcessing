%% MACC Second Harmonic Scatter.
% This script calculates the second harmonic scatter.

% Calculate the RMS pressure spectrum:
T1_MEAS_2500_P_135 = MACC.MProcessing.rmsPressure(T1_MEAS_2500_FREQ_135, T5_SENSITIVITY);
T2_MEAS_2500_P_135 = MACC.MProcessing.rmsPressure(T2_MEAS_2500_FREQ_135, T6_SENSITIVITY);
T1_MEAS_2500_P_225 = MACC.MProcessing.rmsPressure(T1_MEAS_2500_FREQ_225, T3_SENSITIVITY);
T2_MEAS_2500_P_225 = MACC.MProcessing.rmsPressure(T2_MEAS_2500_FREQ_225, T4_SENSITIVITY);
T3_MEAS_2500_P_90 = MACC.MProcessing.rmsPressure(T3_MEAS_2500_FREQ_90, T5_SENSITIVITY);
T4_MEAS_2500_P_90 = MACC.MProcessing.rmsPressure(T4_MEAS_2500_FREQ_90, T6_SENSITIVITY);

T1_MEAS_1000_P_135 = MACC.MProcessing.rmsPressure(T1_MEAS_1000_FREQ_135, T5_SENSITIVITY);
T2_MEAS_1000_P_135 = MACC.MProcessing.rmsPressure(T2_MEAS_1000_FREQ_135, T6_SENSITIVITY);
T1_MEAS_1000_P_225 = MACC.MProcessing.rmsPressure(T1_MEAS_1000_FREQ_225, T3_SENSITIVITY);
T2_MEAS_1000_P_225 = MACC.MProcessing.rmsPressure(T2_MEAS_1000_FREQ_225, T4_SENSITIVITY);
T3_MEAS_1000_P_90 = MACC.MProcessing.rmsPressure(T3_MEAS_1000_FREQ_90, T5_SENSITIVITY);
T4_MEAS_1000_P_90 = MACC.MProcessing.rmsPressure(T4_MEAS_1000_FREQ_90, T6_SENSITIVITY);

% Calculate the pressure at the frequency of interest:
[T1_MEAS_2500_135_P, T1_MEAS_2500_135_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_P_135, T1_REF_0_F.*2, 3, 7);
[T2_MEAS_2500_135_P, T2_MEAS_2500_135_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_P_135, T2_REF_0_F.*2, 3, 7);
[T1_MEAS_2500_225_P, T1_MEAS_2500_225_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_P_225, T1_REF_0_F.*2, 1, 4);
[T2_MEAS_2500_225_P, T2_MEAS_2500_225_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_P_225, T2_REF_0_F.*2, 1, 4);
[T3_MEAS_2500_90_P, T3_MEAS_2500_90_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_2500_P_90, T3_REF_0_F.*2, 1, 5);
[T4_MEAS_2500_90_P, T4_MEAS_2500_90_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_2500_P_90, T4_REF_0_F.*2, 1, 5);

[T1_MEAS_1000_135_P, T1_MEAS_1000_135_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_P_135, T1_REF_0_F.*2, 3, 7);
[T2_MEAS_1000_135_P, T2_MEAS_1000_135_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_P_135, T2_REF_0_F.*2, 3, 7);
[T1_MEAS_1000_225_P, T1_MEAS_1000_225_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_P_225, T1_REF_0_F.*2, 1, 4);
[T2_MEAS_1000_225_P, T2_MEAS_1000_225_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_P_225, T1_REF_0_F.*2, 1, 4);
[T3_MEAS_1000_90_P, T3_MEAS_1000_90_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_1000_P_90, T3_REF_0_F.*2, 1, 5);
[T4_MEAS_1000_90_P, T4_MEAS_1000_90_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_1000_P_90, T4_REF_0_F.*2, 1, 5);

% Calculate the statistics for the experimental data:
T1_MEAS_2500_STATS_135 = MACC.MProcessing.experimentStatistics(T1_MEAS_2500_135_P);
T2_MEAS_2500_STATS_135 = MACC.MProcessing.experimentStatistics(T2_MEAS_2500_135_P);
T1_MEAS_2500_STATS_225 = MACC.MProcessing.experimentStatistics(T1_MEAS_2500_225_P);
T2_MEAS_2500_STATS_225 = MACC.MProcessing.experimentStatistics(T2_MEAS_2500_225_P);
T3_MEAS_2500_STATS_90 = MACC.MProcessing.experimentStatistics(T3_MEAS_2500_90_P);
T4_MEAS_2500_STATS_90 = MACC.MProcessing.experimentStatistics(T4_MEAS_2500_90_P);

T1_MEAS_1000_STATS_135 = MACC.MProcessing.experimentStatistics(T1_MEAS_1000_135_P);
T2_MEAS_1000_STATS_135 = MACC.MProcessing.experimentStatistics(T2_MEAS_1000_135_P);
T1_MEAS_1000_STATS_225 = MACC.MProcessing.experimentStatistics(T1_MEAS_1000_225_P);
T2_MEAS_1000_STATS_225 = MACC.MProcessing.experimentStatistics(T2_MEAS_1000_225_P);
T3_MEAS_1000_STATS_90 = MACC.MProcessing.experimentStatistics(T3_MEAS_1000_90_P);
T4_MEAS_1000_STATS_90 = MACC.MProcessing.experimentStatistics(T4_MEAS_1000_90_P);

T1_REF_STATS_135 = MACC.MProcessing.experimentStatistics(T1_REF_0_P(:, 3:7));
T2_REF_STATS_135 = MACC.MProcessing.experimentStatistics(T2_REF_0_P(:, 3:7));
T1_REF_STATS_225 = MACC.MProcessing.experimentStatistics(T3_REF_0_P(:, 1:4));
T2_REF_STATS_225 = MACC.MProcessing.experimentStatistics(T4_REF_0_P(:, 1:4));
T3_REF_STATS_90 = MACC.MProcessing.experimentStatistics(T5_REF_0_P(:, 1:5));
T4_REF_STATS_90 = MACC.MProcessing.experimentStatistics(T6_REF_0_P(:, 1:5));

% Calculate the linear ratio:
T1_MEAS_2500_LIN_135 = MACC.MProcessing.linearRatio(T1_MEAS_2500_STATS_135, T1_REF_STATS_135);
T2_MEAS_2500_LIN_135 = MACC.MProcessing.linearRatio(T2_MEAS_2500_STATS_135, T2_REF_STATS_135);
T1_MEAS_2500_LIN_225 = MACC.MProcessing.linearRatio(T1_MEAS_2500_STATS_225, T1_REF_STATS_225);
T2_MEAS_2500_LIN_225 = MACC.MProcessing.linearRatio(T2_MEAS_2500_STATS_225, T2_REF_STATS_225);
T3_MEAS_2500_LIN_90 = MACC.MProcessing.linearRatio(T3_MEAS_2500_STATS_90, T3_REF_STATS_90);
T4_MEAS_2500_LIN_90 = MACC.MProcessing.linearRatio(T4_MEAS_2500_STATS_90, T4_REF_STATS_90);

T1_MEAS_1000_LIN_135 = MACC.MProcessing.linearRatio(T1_MEAS_1000_STATS_135, T1_REF_STATS_135);
T2_MEAS_1000_LIN_135 = MACC.MProcessing.linearRatio(T2_MEAS_1000_STATS_135, T2_REF_STATS_135);
T1_MEAS_1000_LIN_225 = MACC.MProcessing.linearRatio(T1_MEAS_1000_STATS_225, T1_REF_STATS_225);
T2_MEAS_1000_LIN_225 = MACC.MProcessing.linearRatio(T2_MEAS_1000_STATS_225, T2_REF_STATS_225);
T3_MEAS_1000_LIN_90 = MACC.MProcessing.linearRatio(T3_MEAS_1000_STATS_90, T3_REF_STATS_90);
T4_MEAS_1000_LIN_90 = MACC.MProcessing.linearRatio(T4_MEAS_1000_STATS_90, T4_REF_STATS_90);

% Calculate dB data:
T1_MEAS_2500_DB_135 = MACC.MProcessing.dBData(T1_MEAS_2500_LIN_135);
T2_MEAS_2500_DB_135 = MACC.MProcessing.dBData(T2_MEAS_2500_LIN_135);
T1_MEAS_2500_DB_225 = MACC.MProcessing.dBData(T1_MEAS_2500_LIN_225);
T2_MEAS_2500_DB_225 = MACC.MProcessing.dBData(T2_MEAS_2500_LIN_225);
T3_MEAS_2500_DB_90 = MACC.MProcessing.dBData(T3_MEAS_2500_LIN_90);
T4_MEAS_2500_DB_90 = MACC.MProcessing.dBData(T4_MEAS_2500_LIN_90);

T1_MEAS_1000_DB_135 = MACC.MProcessing.dBData(T1_MEAS_1000_LIN_135);
T2_MEAS_1000_DB_135 = MACC.MProcessing.dBData(T2_MEAS_1000_LIN_135);
T1_MEAS_1000_DB_225 = MACC.MProcessing.dBData(T1_MEAS_1000_LIN_225);
T2_MEAS_1000_DB_225 = MACC.MProcessing.dBData(T2_MEAS_1000_LIN_225);
T3_MEAS_1000_DB_90 = MACC.MProcessing.dBData(T3_MEAS_1000_LIN_90);
T4_MEAS_1000_DB_90 = MACC.MProcessing.dBData(T4_MEAS_1000_LIN_90);

% Plot dB data:
figure;

subplot(2,1,1)
hold on;

errorbar(T1_MEAS_1000_225_F.*1e-6, T1_MEAS_1000_DB_225.mean_val, T1_MEAS_1000_DB_225.serr_val, '-o', 'Color',[0.00,0.45,0.74], 'LineWidth', 1);
errorbar(T2_MEAS_1000_225_F.*1e-6, T2_MEAS_1000_DB_225.mean_val, T2_MEAS_1000_DB_225.serr_val, '-+', 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
errorbar(T1_MEAS_1000_135_F.*1e-6, T1_MEAS_1000_DB_135.mean_val, T1_MEAS_1000_DB_135.serr_val, '-*', 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
errorbar(T2_MEAS_1000_135_F.*1e-6, T2_MEAS_1000_DB_135.mean_val, T2_MEAS_1000_DB_135.serr_val, '-d', 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
errorbar(T3_MEAS_1000_90_F.*1e-6, T3_MEAS_1000_DB_90.mean_val, T3_MEAS_1000_DB_90.serr_val, '-x', 'Color',[0.30,0.75,0.93],  'LineWidth', 1);
errorbar(T4_MEAS_1000_90_F.*1e-6, T4_MEAS_1000_DB_90.mean_val, T4_MEAS_1000_DB_90.serr_val, '-s', 'Color',[0.64,0.08,0.18],  'LineWidth', 1);

H=gca;
H.LineWidth = 1;
H.FontSize = 12;
title("(a)");
xlabel('Frequency (MHz)', 'FontSize', 14);
ylabel('Scattering (dB)', 'FontSize', 14);
legend('T1 Tx, T3 Rx','T2 Tx, T4 Rx','T1 Tx, T5 Rx', ...
       'T2 Tx, T6 Rx','T3 Tx, T5 Rx','T4 Tx, T6 Rx', ...
       'FontSize', 12);

subplot(2,1,2)
hold on;
ax.ColorOrderIndex = 1;

errorbar(T1_MEAS_2500_225_F.*1e-6, T1_MEAS_2500_DB_225.mean_val, T1_MEAS_2500_DB_225.serr_val, '--o', 'Color',[0.00,0.45,0.74], 'LineWidth', 1);
errorbar(T2_MEAS_2500_225_F.*1e-6, T2_MEAS_2500_DB_225.mean_val, T2_MEAS_2500_DB_225.serr_val, '--+', 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
errorbar(T1_MEAS_2500_135_F.*1e-6, T1_MEAS_2500_DB_135.mean_val, T1_MEAS_2500_DB_135.serr_val, '--*', 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
errorbar(T2_MEAS_2500_135_F.*1e-6, T2_MEAS_2500_DB_135.mean_val, T2_MEAS_2500_DB_135.serr_val, '--d', 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
errorbar(T3_MEAS_2500_90_F.*1e-6, T3_MEAS_2500_DB_90.mean_val, T3_MEAS_2500_DB_90.serr_val, '--x', 'Color',[0.30,0.75,0.93],  'LineWidth', 1);
errorbar(T4_MEAS_2500_90_F.*1e-6, T4_MEAS_2500_DB_90.mean_val, T4_MEAS_2500_DB_90.serr_val, '--s', 'Color',[0.64,0.08,0.18],  'LineWidth', 1);

H=gca;
H.LineWidth = 1;
H.FontSize = 12;
title("(b)", 'FontSize', 16);
xlabel('Frequency (MHz)', 'FontSize', 14);
ylabel('Scattering (dB)', 'FontSize', 14);
legend('T1 Tx, T3 Rx','T2 Tx, T4 Rx','T1 Tx, T5 Rx', ...
       'T2 Tx, T6 Rx','T3 Tx, T5 Rx','T4 Tx, T6 Rx', ...
       'FontSize', 12);
