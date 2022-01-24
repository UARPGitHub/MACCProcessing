%% MACC Frequency Domain Example.
% This script generates an example of stitching together the frequency
% domain received on different transducers to assess a broader frequency
% range.

% Calculate the RMS pressure spectrum by using the sensitivity for ref data:
T1_REF_P_180 = MACC.MProcessing.rmsPressure(T1_REF_FREQ_180, T1_SENSITIVITY);
T1_REF_P_225 = MACC.MProcessing.rmsPressure(T1_REF_FREQ_225, T3_SENSITIVITY);

% Plot the data:
figure;
hold on;
subplot(2,2,1);
plot(T1_REF_P_0{1}.frequency(1:821).*1e-6, T1_REF_P_0{1}.amplitude(1,1:821), 'Color',[0.00,0.45,0.74], 'LineWidth', 1);
H=gca;
H.LineWidth = 1;
title("(a)");
xlabel('Frequency (MHz)');
ylabel('RMS Pressure (Pa)');
legend('Reference');
xlim([0, 4]); 
subplot(2,2,2);
hold on;
plot(T1_REF_P_180{1}.frequency(1:821).*1e-6, T1_REF_P_180{1}.amplitude(1,1:821), 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
plot(T1_MEAS_2500_P_180{1}.frequency(1:821).*1e-6, T1_MEAS_2500_P_180{1}.amplitude(1,1:821), 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
plot(T1_MEAS_1000_P_180{1}.frequency(1:821).*1e-6, T1_MEAS_1000_P_180{1}.amplitude(1,1:821), 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
H=gca;
H.LineWidth = 1;
title("(b)");
xlabel('Frequency (MHz)');
ylabel('RMS Pressure (Pa)');
legend('Reference', '1:2500 Dilution', '1:1000 Dilution');
xlim([0, 4]);
subplot(2,2,3);
hold on;
plot(T1_REF_P_225{1}.frequency(1:821).*1e-6, T1_REF_P_225{1}.amplitude(1,1:821), 'Color',[0.30,0.75,0.93], 'LineWidth', 1);
plot(T1_MEAS_2500_P_225{1}.frequency(1:821).*1e-6, T1_MEAS_2500_P_225{1}.amplitude(1,1:821), 'Color',[0.64,0.08,0.18], 'LineWidth', 1);
plot(T1_MEAS_1000_P_225{1}.frequency(1:821).*1e-6, T1_MEAS_1000_P_225{1}.amplitude(1,1:821), 'Color',[0.93,0.69,0.13], 'LineWidth', 1);
H=gca;
H.LineWidth = 1;
title("(c)");
xlabel('Frequency (MHz)');
ylabel('RMS Pressure (Pa)');
legend('Reference', '1:2500 Dilution', '1:1000 Dilution');
xlim([0, 4]);
subplot(2,2,4);
hold on;
plot(T1_REF_P_180{1}.frequency(1:534).*1e-6, T1_REF_P_180{1}.amplitude(1,1:534), 'Color',[0.85,0.33,0.10], 'LineWidth', 1);
plot(T1_MEAS_2500_P_180{1}.frequency(1:534).*1e-6, T1_MEAS_2500_P_180{1}.amplitude(1,1:534), 'Color',[0.49,0.18,0.56], 'LineWidth', 1);
plot(T1_MEAS_1000_P_180{1}.frequency(1:534).*1e-6, T1_MEAS_1000_P_180{1}.amplitude(1,1:534), 'Color',[0.47,0.67,0.19], 'LineWidth', 1);
plot(T1_REF_P_225{1}.frequency(534:821).*1e-6, T1_REF_P_225{1}.amplitude(1,534:821), 'Color',[0.30,0.75,0.93], 'LineWidth', 1);
plot(T1_MEAS_2500_P_225{1}.frequency(534:821).*1e-6, T1_MEAS_2500_P_225{1}.amplitude(1,534:821), 'Color',[0.64,0.08,0.18], 'LineWidth', 1);
plot(T1_MEAS_1000_P_225{1}.frequency(534:821).*1e-6, T1_MEAS_1000_P_225{1}.amplitude(1,534:821), 'Color',[0.93,0.69,0.13], 'LineWidth', 1);
H=gca;
H.LineWidth = 1;
title("(d)");
xlabel('Frequency (MHz)');
ylabel('RMS Pressure (Pa)');
legend('Reference Fundamental', '1:2500 Dilution Fundamental', '1:1000 Dilution Fundamental', ...
       'Reference 2nd Harmonic', '1:2500 Dilution 2nd Harmonic', '1:1000 Dilution 2nd Harmonic');
xlim([0, 4]);
