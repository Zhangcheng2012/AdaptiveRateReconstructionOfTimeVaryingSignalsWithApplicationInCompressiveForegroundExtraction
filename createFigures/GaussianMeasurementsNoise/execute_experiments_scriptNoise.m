% Script to run the experiments

clear all
close all


% =========================================================================
% Add folders with data, and motion estimator to the path
addpath('../../datasets/')
addpath('SubME_1.6/');
% =========================================================================

% =========================================================================
% Experiment 1: Worked wll for 128x128

Algorithm_parameters = struct('SOLVER_L1L1', {'DECOPT'}, ...
    'MAX_ITER_L1L1', {1000}, ...
    'TOL_NONZERO', {20}, ...
    'alpha', {0.5}, ...
    'delta', {0.1}, ...
    'epsilon', {0.1}, ...
    'sigma', {2}, ...
    'SI_BOOST', {1.3}, ...
    'MotionEstimation_Blocksize', {8}, ...
    'MotionEstimation_Searchlim', {4}, ...
    'Initial_sparsity1', {'optimal'}, ...
    'Initial_sparsity2', {'optimal'} ...
    );

Execution_parameters = struct('FILENAME_DATA', {'hall128x128.mat'}, ...
    'FILENAME_RESULTS', {'ResultsHall128x128_allFrames.mat'}, ...
    'FILENAME_FRAMES', {'Hall_visuals'}, ...
    'nFrames', {281}, ...
    'seed_num', {1}, ...    
    'save_frames', {[4,100,150,250]} ...
    );

ExperimentsTrackingImagesNoise(Algorithm_parameters, Execution_parameters);
% =========================================================================


% =========================================================================
% Experiment 2
% Memory exploded for 128x128, but worked for 116x116

Algorithm_parameters = struct('SOLVER_L1L1', {'DECOPT'}, ...
    'MAX_ITER_L1L1', {1000}, ...
    'TOL_NONZERO', {20}, ...
    'alpha', {0.5}, ...
    'epsilon', {0.1}, ...
    'sigma', {2}, ...
    'delta', {0.1}, ...
    'SI_BOOST', {1.3}, ...
    'MotionEstimation_Blocksize', {8}, ...
    'MotionEstimation_Searchlim', {4}, ...
    'Initial_sparsity1', {10}, ...
    'Initial_sparsity2', {10} ...
    );

Execution_parameters = struct('FILENAME_DATA', {'PETS09_S2L1.mat'}, ...
    'FILENAME_RESULTS', {'ResultsPETS_allFrames.mat'}, ...
    'FILENAME_FRAMES', {'PETS_visuals'}, ...
    'nFrames', {171}, ...
    'seed_num', {1}, ...
    'save_frames', {[5,75,100,170]} ...
    );

ExperimentsTrackingImagesNoise(Algorithm_parameters, Execution_parameters);
% =========================================================================

