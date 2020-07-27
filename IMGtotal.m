function varargout = IMGtotal(varargin)
% IMGTOTAL MATLAB code for IMGtotal.fig
%      IMGTOTAL, by itself, creates a new IMGTOTAL or raises the existing
%      singleton*.
%
%      H = IMGTOTAL returns the handle to a new IMGTOTAL or the handle to
%      the existing singleton*.
%
%      IMGTOTAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMGTOTAL.M with the given input arguments.
%
%      IMGTOTAL('Property','Value',...) creates a new IMGTOTAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IMGtotal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IMGtotal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IMGtotal

% Last Modified by GUIDE v2.5 18-Jun-2020 14:59:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IMGtotal_OpeningFcn, ...
                   'gui_OutputFcn',  @IMGtotal_OutputFcn, ...
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


% --- Executes just before IMGtotal is made visible.
function IMGtotal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to IMGtotal (see VARARGIN)

% Choose default command line output for IMGtotal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
definir(handles);
% UIWAIT makes IMGtotal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IMGtotal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function definir (handles)
global filename;
global atv;
global selectedImage;
global a;
global newfilename;
global RGBimg;

set(handles.edit1, 'enable', 'off');
set(handles.edit1,'String',filename);
if atv==1
    axes(handles.axesTotal);
    imshow(selectedImage);
    a=0;
    set(handles.text2,'String','Imagem Original');
else atv==2
    set(handles.text2,'String','Classificação de toda a imagem');
    axes(handles.axesTotal);
    imshow(RGBimg);
    if a==1
        img = imread(strcat(newfilename,'2.png'));
        axes(handles.axes2);
        imshow(img);
        else if a==2
            img = imread(strcat(newfilename,'1.png'));
            axes(handles.axes2);
            imshow(img);
            end
    end
end
