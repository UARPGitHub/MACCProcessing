%% Script for processing MACC results.
% This script is used to process the supplementary data from the 
% experiment performed with the Microbubble Acoustic Characterisation
% Chamber.

%% Setup the directories
global SCRIPT_DIR;

ROOT_DIR    = matlab.desktop.editor.getActiveFilename;
SCRIPT_DIR  = 'MACC_Stepped_Frequency';
ROOT_DIR    = regexp(ROOT_DIR,SCRIPT_DIR,'split');
ROOT_DIR    = ROOT_DIR{1};
PACKAGE_DIR = strcat(ROOT_DIR,'MACC_Packages\');

% add the package directory to the path:
addpath(PACKAGE_DIR);

% must be set to the supplementary material directory:
SCRATCH_DIR = strcat(ROOT_DIR,'MACC_Scratch\');

%% Load the frequency domain averages from H5 files:
maccH5Load

%% Calculate the statistics for all measurements that will subsequently be used in scattering calculations:
% This will give a warning if a significant difference is not determined
% between the references and the measured amplitude data:
maccStatistics;

%% Calculate the MACC receive sensitivity for pressure conversions:
maccSensitivity;

%% Calculate the statistics of the reference so they can be combined with the statistics of measurements:
maccReferenceStatistics;

%% Calculate scattering at the fundamental frequency for all measurements:
% This will create a figure of the scattering:
maccFundamentalScatter;

%% Calculate scattering at the second harmonic for all measurements:
% This will create a figure of the scattering:
maccSecondHarmonicScatter;

%% Example of frequency domain:
% This plots an example of the frequency domain averaging for the 1.6 MHz
% transmission from T1 and displays various data received on T1 and T3.
maccFrequencyDomainExamplePlot;
