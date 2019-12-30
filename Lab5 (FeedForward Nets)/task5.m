function varargout = task5(varargin)
% TASK5 MATLAB code for task5.fig
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @task5_OpeningFcn, ...
                   'gui_OutputFcn',  @task5_OutputFcn, ...
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


% --- Executes just before task5 is made visible.
function task5_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
% --- Outputs from this function are returned to the command line.
function varargout = task5_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
i=get(handles.slider1,'Value');
set(handles.text5,'String',num2str(i));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
i=get(handles.slider2,'Value');
set(handles.text6,'String',num2str(i));

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
i=get(handles.slider1,'Value');
S1=get(handles.slider2,'Value'); 
ep=str2double(get(handles.edit1,'String'));
P = -2:(.4/i):2;        % Training Subset: Inputs 
T = 1 + sin(i*pi*P/4);  % Training Subset: Targets 
P1 = -2:(.04/i):2;      % Testing Subset 

net = newff(P,T,S1); 
net.trainParam.goal=0.001; 
net.trainParam.show=NaN; 
net.trainParam.epochs=ep;
[net,tr]=train(net,P,T);   % Training 
Y1=sim(net,P1);            % Testing 

y=sim(net,P);
a1=plot(handles.axes1,P,T,'b',P,y,'+red'); 

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close all

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
