function varargout = Kabisat_123210181(varargin)
% KABISAT_123210181 MATLAB code for Kabisat_123210181.fig
%      KABISAT_123210181, by itself, creates a new KABISAT_123210181 or raises the existing
%      singleton*.
%
%      H = KABISAT_123210181 returns the handle to a new KABISAT_123210181 or the handle to
%      the existing singleton*.
%
%      KABISAT_123210181('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KABISAT_123210181.M with the given input arguments.
%
%      KABISAT_123210181('Property','Value',...) creates a new KABISAT_123210181 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Kabisat_123210181_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Kabisat_123210181_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Kabisat_123210181

% Last Modified by GUIDE v2.5 05-Mar-2023 22:24:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Kabisat_123210181_OpeningFcn, ...
                   'gui_OutputFcn',  @Kabisat_123210181_OutputFcn, ...
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


% --- Executes just before Kabisat_123210181 is made visible.
function Kabisat_123210181_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Kabisat_123210181 (see VARARGIN)

% Choose default command line output for Kabisat_123210181
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Kabisat_123210181 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Kabisat_123210181_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputTahun_Callback(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTahun as text
%        str2double(get(hObject,'String')) returns contents of inputTahun as a double


% --- Executes during object creation, after setting all properties.
function inputTahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputTahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cekButton.
function cekButton_Callback(hObject, eventdata, handles)
% hObject    handle to cekButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputTahunString = get(handles.inputTahun, 'string');
inputSetDouble = str2double(inputTahunString);
output = rem (inputSetDouble, 4);

if(output == 0)
    output = "Tahun Kabisat";
else
    output = "Bukan Kabisat";
end

set(handles.hasilCek, 'string',(output));



function hasilCek_Callback(hObject, eventdata, handles)
% hObject    handle to hasilCek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilCek as text
%        str2double(get(hObject,'String')) returns contents of hasilCek as a double


% --- Executes during object creation, after setting all properties.
function hasilCek_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilCek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
