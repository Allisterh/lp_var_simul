% Settings: estimand_type = IV


%% DGP

DF_model.IV.rho     = 0.1; % IV persistence
DF_model.IV.manual_alpha   = 1; % manually set up IV shock coefficient
DF_model.IV.manual_sigma_v = 1; % manually set up IV noise

DF_model.IV.IV_strength_calibrate = 0; % use calibrated IV strength


%% Estimation

settings.est.methods_name    = [settings.est.methods_name {'svar_iv'}]; % estimands

settings.est.with_shock      = 0; % shock is observed and ordered first in data?
settings.est.recursive_shock = 0; % use recursive shock
settings.est.with_IV         = 1; % IV is ordered first in data or used in IV method?