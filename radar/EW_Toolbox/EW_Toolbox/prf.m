function PRF=prf(PRI)
% PRF Pulse repetition Frequency (pulsed radar)
% 
%   PRF = prf(PRI)
% 
%   PRF = pulse repetition frequency [Hz]
%   PRI = pulse repetition interval [s]
% 
%   AIM: To convert from pulse repetition interval (PRI) to pulse 
%   repetition frequency (PRF).
% 
%   TECHNICAL BACKGROUND: A pulsed radar transmitts a pulse of width tau 
%   every T seconds. The frequency of the transmitted pulses is then known
%   as the pulse repetition frequency and can be calculated by PRF=1/T. The
%   pulse repetition interval is PRI=T. PRF is more commonly used in the 
%   radar domain while PRI is used in the EW domain. 
% 
%   REFERENCES: "Radar Fundamentals", Ian Faulconbridge, Argos Press, 2002
% 
%   See also PRI

PRF=1/PRI;