%% MACC Statistics.
%
% This script calculates a two-sampled, two-tailed t-test to determine if
% the amplitude measurements at the scattering frequencies have equal
% means between the microbubble measurements and a reference. Equal
% variance is not assumed and the t-test is performed at the 5%
% significance level for every valid frequency used in the generation of
% the fundamental and second harmonic scattering graphs ...

% Extract the amplitude for the fundamental backscatter:
[T1_MEAS_2500_180_A, T1_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_FREQ_180, T1_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 7);
[T2_MEAS_2500_180_A, T2_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_FREQ_180, T2_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 7);
[T3_MEAS_2500_180_A, T3_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_2500_FREQ_180, T3_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 11);
[T4_MEAS_2500_180_A, T4_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_2500_FREQ_180, T4_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 11);
[T5_MEAS_2500_180_A, T5_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T5_MEAS_2500_FREQ_180, T5_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 14);
[T6_MEAS_2500_180_A, T6_MEAS_2500_180_F] = MACC.MProcessing.amplitudeAtFrequency(T6_MEAS_2500_FREQ_180, T6_MEAS_2500_FREQ_180{1}.tx_central_frequency, 1, 14);

[T1_MEAS_1000_180_A, T1_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_FREQ_180, T1_REF_FREQ_180{1}.tx_central_frequency, 1, 7);
[T2_MEAS_1000_180_A, T2_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_FREQ_180, T2_REF_FREQ_180{1}.tx_central_frequency, 1, 7);
[T3_MEAS_1000_180_A, T3_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_1000_FREQ_180, T3_REF_FREQ_180{1}.tx_central_frequency, 1, 11);
[T4_MEAS_1000_180_A, T4_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_1000_FREQ_180, T4_REF_FREQ_180{1}.tx_central_frequency, 1, 11);
[T5_MEAS_1000_180_A, T5_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T5_MEAS_1000_FREQ_180, T5_REF_FREQ_180{1}.tx_central_frequency, 1, 14);
[T6_MEAS_1000_180_A, T6_MEAS_1000_180_F] = MACC.MProcessing.amplitudeAtFrequency(T6_MEAS_1000_FREQ_180, T6_REF_FREQ_180{1}.tx_central_frequency, 1, 14);

[T1_REF_180_A, T1_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T1_REF_FREQ_180, T1_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 7);
[T2_REF_180_A, T2_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T2_REF_FREQ_180, T2_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 7);
[T3_REF_180_A, T3_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T3_REF_FREQ_180, T3_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 11);
[T4_REF_180_A, T4_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T4_REF_FREQ_180, T4_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 11);
[T5_REF_180_A, T5_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T5_REF_FREQ_180, T5_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 14);
[T6_REF_180_A, T6_REF_180_F] = MACC.MProcessing.amplitudeAtFrequency(T6_REF_FREQ_180, T6_MEAS_1000_FREQ_180{1}.tx_central_frequency, 1, 14);

% Extract the amplitude for the second harmonic scattering:
[T1_MEAS_2500_135_A, T1_MEAS_2500_135_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_FREQ_135, T1_MEAS_2500_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T2_MEAS_2500_135_A, T2_MEAS_2500_135_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_FREQ_135, T2_MEAS_2500_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T1_MEAS_2500_225_A, T1_MEAS_2500_225_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_2500_FREQ_225, T1_MEAS_2500_FREQ_225{1}.tx_central_frequency.*2, 1, 4);
[T2_MEAS_2500_225_A, T2_MEAS_2500_225_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_2500_FREQ_225, T2_MEAS_2500_FREQ_225{1}.tx_central_frequency.*2, 1, 4);

[T3_MEAS_2500_90_A, T3_MEAS_2500_90_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_2500_FREQ_90, T3_MEAS_2500_FREQ_90{1}.tx_central_frequency.*2, 1, 5);
[T4_MEAS_2500_90_A, T4_MEAS_2500_90_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_2500_FREQ_90, T4_MEAS_2500_FREQ_90{1}.tx_central_frequency.*2, 1, 5);

[T1_MEAS_1000_135_A, T1_MEAS_1000_135_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_FREQ_135, T1_MEAS_1000_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T2_MEAS_1000_135_A, T2_MEAS_1000_135_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_FREQ_135, T2_MEAS_1000_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T1_MEAS_1000_225_A, T1_MEAS_1000_225_F] = MACC.MProcessing.amplitudeAtFrequency(T1_MEAS_1000_FREQ_225, T1_MEAS_1000_FREQ_225{1}.tx_central_frequency.*2, 1, 4);
[T2_MEAS_1000_225_A, T2_MEAS_1000_225_F] = MACC.MProcessing.amplitudeAtFrequency(T2_MEAS_1000_FREQ_225, T2_MEAS_1000_FREQ_225{1}.tx_central_frequency.*2, 1, 4);

[T3_MEAS_1000_90_A, T3_MEAS_1000_90_F] = MACC.MProcessing.amplitudeAtFrequency(T3_MEAS_1000_FREQ_90, T3_MEAS_1000_FREQ_90{1}.tx_central_frequency.*2, 1, 5);
[T4_MEAS_1000_90_A, T4_MEAS_1000_90_F] = MACC.MProcessing.amplitudeAtFrequency(T4_MEAS_1000_FREQ_90, T4_MEAS_1000_FREQ_90{1}.tx_central_frequency.*2, 1, 5);

[T1_REF_135_A, T1_REF_135_F] = MACC.MProcessing.amplitudeAtFrequency(T1_REF_FREQ_135, T1_REF_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T2_REF_135_A, T2_REF_135_F] = MACC.MProcessing.amplitudeAtFrequency(T2_REF_FREQ_135, T2_REF_FREQ_135{1}.tx_central_frequency.*2, 3, 7);
[T1_REF_225_A, T1_REF_225_F] = MACC.MProcessing.amplitudeAtFrequency(T1_REF_FREQ_225, T1_REF_FREQ_225{1}.tx_central_frequency.*2, 1, 4);
[T2_REF_225_A, T2_REF_225_F] = MACC.MProcessing.amplitudeAtFrequency(T2_REF_FREQ_225, T2_REF_FREQ_225{1}.tx_central_frequency.*2, 1, 4);

[T3_REF_90_A, T3_REF_90_F] = MACC.MProcessing.amplitudeAtFrequency(T3_REF_FREQ_90, T3_REF_FREQ_90{1}.tx_central_frequency.*2, 1, 5);
[T4_REF_90_A, T4_REF_90_F] = MACC.MProcessing.amplitudeAtFrequency(T4_REF_FREQ_90, T4_REF_FREQ_90{1}.tx_central_frequency.*2, 1, 5);

% Perform a t-test between the measured and reference data to ensure
% statistical significance for the fundamental frequency:
T1_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T1_MEAS_2500_180_A, T1_REF_180_A);
if any(T1_MEAS_2500_TTEST_180 ~= 1)
    warning("T1_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T2_MEAS_2500_180_A, T2_REF_180_A);
if any(T2_MEAS_2500_TTEST_180 ~= 1)
    warning("T2_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T3_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T3_MEAS_2500_180_A, T3_REF_180_A);
if any(T3_MEAS_2500_TTEST_180 ~= 1)
    warning("T3_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T4_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T4_MEAS_2500_180_A, T4_REF_180_A);
if any(T4_MEAS_2500_TTEST_180 ~= 1)
    warning("T4_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T5_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T5_MEAS_2500_180_A, T5_REF_180_A);
if any(T5_MEAS_2500_TTEST_180 ~= 1)
    warning("T5_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T6_MEAS_2500_TTEST_180 = MACC.MProcessing.tTest(T6_MEAS_2500_180_A, T6_REF_180_A);
if any(T6_MEAS_2500_TTEST_180 ~= 1)
    warning("T6_MEAS_2500_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T1_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T1_MEAS_1000_180_A, T1_REF_180_A);
if any(T1_MEAS_1000_TTEST_180 ~= 1)
    warning("T1_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T2_MEAS_1000_180_A, T2_REF_180_A);
if any(T2_MEAS_1000_TTEST_180 ~= 1)
    warning("T2_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T3_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T3_MEAS_1000_180_A, T3_REF_180_A);
if any(T3_MEAS_1000_TTEST_180 ~= 1)
    warning("T3_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T4_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T4_MEAS_1000_180_A, T4_REF_180_A);
if any(T4_MEAS_1000_TTEST_180 ~= 1)
    warning("T4_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T5_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T5_MEAS_1000_180_A, T5_REF_180_A);
if any(T5_MEAS_1000_TTEST_180 ~= 1)
    warning("T5_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T6_MEAS_1000_TTEST_180 = MACC.MProcessing.tTest(T6_MEAS_1000_180_A, T6_REF_180_A);
if any(T6_MEAS_1000_TTEST_180 ~= 1)
    warning("T6_MEAS_1000_TTEST_180 t test did not reject null hypothesis at all frequencies used in measurements.");
end

% Perform a t-test between the measured and reference data to ensure
% statistical significance for second harmonic data:
T1_MEAS_2500_TTEST_135 = MACC.MProcessing.tTest(T1_MEAS_2500_135_A, T1_REF_135_A);
if any(T1_MEAS_2500_TTEST_135 ~= 1)
    warning("T1_MEAS_2500_TTEST_135 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_2500_TTEST_135 = MACC.MProcessing.tTest(T2_MEAS_2500_135_A, T2_REF_135_A);
if any(T2_MEAS_2500_TTEST_135 ~= 1)
    warning("T2_MEAS_2500_TTEST_135 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T1_MEAS_2500_TTEST_225 = MACC.MProcessing.tTest(T1_MEAS_2500_225_A, T1_REF_225_A);
if any(T1_MEAS_2500_TTEST_225 ~= 1)
    warning("T1_MEAS_2500_TTEST_225 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_2500_TTEST_225 = MACC.MProcessing.tTest(T2_MEAS_2500_225_A, T2_REF_225_A);
if any(T2_MEAS_2500_TTEST_225 ~= 1)
    warning("T2_MEAS_2500_TTEST_225 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T3_MEAS_2500_TTEST_90 = MACC.MProcessing.tTest(T3_MEAS_2500_90_A, T3_REF_90_A);
if any(T3_MEAS_2500_TTEST_90 ~= 1)
    warning("T3_MEAS_2500_TTEST_90 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T4_MEAS_2500_TTEST_90 = MACC.MProcessing.tTest(T4_MEAS_2500_90_A, T4_REF_90_A);
if any(T4_MEAS_2500_TTEST_90 ~= 1)
    warning("T4_MEAS_2500_TTEST_90 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T1_MEAS_1000_TTEST_135 = MACC.MProcessing.tTest(T1_MEAS_1000_135_A, T1_REF_135_A);
if any(T1_MEAS_1000_TTEST_135 ~= 1)
    warning("T1_MEAS_1000_TTEST_135 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_1000_TTEST_135 = MACC.MProcessing.tTest(T2_MEAS_1000_135_A, T2_REF_135_A);
if any(T2_MEAS_1000_TTEST_135 ~= 1)
    warning("T2_MEAS_1000_TTEST_135 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T1_MEAS_1000_TTEST_225 = MACC.MProcessing.tTest(T1_MEAS_1000_225_A, T1_REF_225_A);
if any(T1_MEAS_1000_TTEST_225 ~= 1)
    warning("T1_MEAS_1000_TTEST_225 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T2_MEAS_1000_TTEST_225 = MACC.MProcessing.tTest(T2_MEAS_1000_225_A, T2_REF_225_A);
if any(T2_MEAS_1000_TTEST_225 ~= 1)
    warning("T2_MEAS_1000_TTEST_225 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T3_MEAS_1000_TTEST_90 = MACC.MProcessing.tTest(T3_MEAS_1000_90_A, T3_REF_90_A);
if any(T3_MEAS_1000_TTEST_90 ~= 1)
    warning("T3_MEAS_1000_TTEST_90 t test did not reject null hypothesis at all frequencies used in measurements.");
end

T4_MEAS_1000_TTEST_90 = MACC.MProcessing.tTest(T4_MEAS_1000_90_A, T4_REF_90_A);
if any(T4_MEAS_1000_TTEST_90 ~= 1)
    warning("T4_MEAS_1000_TTEST_90 t test did not reject null hypothesis at all frequencies used in measurements.");
end
