function varargout = time(varargin)
% TIME M-file for time.fig
%      TIME, by itself, creates a new TIME or raises the existing
%      singleton*.
%
%      H = TIME returns the handle to a new TIME or the handle to
%      the existing singleton*.
%
%      TIME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIME.M with the given input arguments.
%
%      TIME('Property','Value',...) creates a new TIME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before time_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to time_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help time

% Last Modified by GUIDE v2.5 09-Oct-2010 21:23:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @time_OpeningFcn, ...
                   'gui_OutputFcn',  @time_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before time is made visible.
function time_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to time (see VARARGIN)

% Choose default command line output for time
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes time wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = time_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get time
d = clock;
% convert time to string
time = sprintf('%02.0f:%02.0f:%02.0f:%02.0f:%02.0f:%02.0f',d(1),d(2),d(3),d(4),d(5),d(6));
% change the String property of pushbutton1
set(gcbo,'String',time)


