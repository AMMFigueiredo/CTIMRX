function varargout = GuiaUtilizador(varargin)
%GUIAUTILIZADOR MATLAB code file for GuiaUtilizador.fig
%      GUIAUTILIZADOR, by itself, creates a new GUIAUTILIZADOR or raises the existing
%      singleton*.
%
%      H = GUIAUTILIZADOR returns the handle to a new GUIAUTILIZADOR or the handle to
%      the existing singleton*.
%
%      GUIAUTILIZADOR('Property','Value',...) creates a new GUIAUTILIZADOR using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to GuiaUtilizador_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUIAUTILIZADOR('CALLBACK') and GUIAUTILIZADOR('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUIAUTILIZADOR.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiaUtilizador

% Last Modified by GUIDE v2.5 19-Mar-2020 15:43:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiaUtilizador_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiaUtilizador_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before GuiaUtilizador is made visible.
function GuiaUtilizador_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for GuiaUtilizador
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiaUtilizador wait for user response (see UIRESUME)
% uiwait(handles.GuiaUtilizador);


% --- Outputs from this function are returned to the command line.
function varargout = GuiaUtilizador_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes when user attempts to close GuiaUtilizador.
function GuiaUtilizador_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to GuiaUtilizador (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
SN=questdlg('Deseja sair?','SAIR','Sim','Não','Sim'); 
if strcmp(SN,'Não') %vai comparar duas strings
    return; 
    %sai automaticamente e não passa ao delete, se for falso passa ao delete
end
delete(handles.GuiaUtilizador);
delete(hObject);
