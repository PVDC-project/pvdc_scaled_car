load LTV_DLC_steer_offset
dataset = LTV_DLC_steer_offset
Idx = 4

for i = 1:length(dataset.Y)
    if strcmp(dataset.Y(i).Path,'Model Root/refTrigEdge')
        trigger_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/Y')
        Y_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/YRef')
        YRef_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/yaw')
        Yaw_IDX = i;
        
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/YawRef')
        YawRef_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/vx')
       vx_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/X')
       X_IDX = i;
    end
    
    if strcmp(dataset.Y(i).Path,'Model Root/steering_angle')
       delta_IDX = i;
    end
    
    
end
%
I = find(dataset.Y(trigger_IDX).Data);
pocetak = I(Idx)

close all
hold on 
figure
hold on
subplot(4,1,1)
hold on
grid on
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), dataset.Y(vx_IDX).Data(pocetak:end)) % Y
xlim([0 25])
subplot(4,1,2)
hold on
grid on
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), dataset.Y(Yaw_IDX).Data(pocetak:end)) % Y
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), dataset.Y(YawRef_IDX).Data(pocetak:end)) % Y
xlim([0 25])
subplot(4,1,3)
hold on
grid on
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), dataset.Y(Y_IDX).Data(pocetak:end)) % Y
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), dataset.Y(YRef_IDX).Data(pocetak:end)) % Y
xlim([0 25])
subplot(4,1,4)
hold on
grid on
plot(dataset.X(2).Data(pocetak:end)-dataset.X(2).Data(pocetak), rad2deg(dataset.Y(delta_IDX).Data(pocetak:end))) % Y
xlim([0 25])