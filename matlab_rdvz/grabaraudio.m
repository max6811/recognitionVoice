%% grabar audio
Fs=44100;
t=2;
v = audiorecorder(Fs, 24, 1)
v.StartFcn = 'disp(''   iniciando grabaci�n'')';
v.StopFcn = 'disp(''   terminando grabaci�n'')';
recordblocking(v, t)
y = v.getaudiodata()
file = 'C:\Users\IDG333\Documents\IDG\documentos\IDG\Universidad\S_Octavo\Digitales III\rdvz'; %lugar donde se guarda el sonido%

%filename='grabacion.wav';
wavwrite (y,Fs,'grabacion_u'); %guarda el sonido en formato wav%
which 'grabacion_u'
sound(y,Fs)

%%
sonido=wavread('audio')
maximo = max(abs(sonido))
n = length(sonido)
snd_norm = zeros(n,1);
for i = 1:n
    snd_norm(i) = sonido(i)/maximo;
end

%%
%r = audiorecorder(22050, 16, 1);
%      record(r);     % speak into microphone...
%      pause(r);
%      p = play(r);   % listen
%      resume(r);     % speak again
%      stop(r);
%      p = play(r);   % listen to complete recording
%      mySpeech = getaudiodata(r, 'int16'); % get data as int16 array