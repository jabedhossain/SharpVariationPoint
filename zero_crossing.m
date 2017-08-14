function zx = zero_crossing(signal,scale, cwtf)
%ZERO_CROSSING Summary of this function goes here
%   Detailed explanation goes here
if(cwtf == 1)
    figure
    ax = subplot(3,1,1);
    plot(0:1:23,signal);
    title(ax,'Analyzed Signal');
    xlabel(ax,'time');
    ylabel(ax,'scale');
    
    wt = cwt(signal,scale,'morl');
    ax1 = subplot(3,1,2);
    plot(wt);
    title(ax1,'Transformed Signal with Morlet');
    xlabel(ax1,'time');
    ylabel(ax1,'scale');
    
    ax2 = subplot(3,1,3);
    zci = @(v) find(v(:).*circshift(v(:), [-1 0]) <= 0); 
    zx = zci(wt);
    plotzerocrossing = plot(wt(zx));
    plotzerocrossing.Marker = '*';
    title(ax2,'Zero-crossing points along the curve');
    ylabel(ax2,'scale');
    grid on;
end

if(cwtf == 2)
    figure
    
    ax = subplot(3,1,1);
    plot(0:1:23,signal);
    title(ax,'Analyzed Signal');
    xlabel(ax,'time');
    ylabel(ax,'scale');
    
    wt = cwt(signal,scale,'mexh');
    ax1 = subplot(3,1,2);
    plot(wt);
    title(ax1,'Transformed Signal with Mexican Hat');
    xlabel(ax1,'time');
    ylabel(ax1,'scale');
    
    ax2 = subplot(3,1,3);
    zci = @(v) find(v(:).*circshift(v(:), [-1 0]) <= 0); 
    zx = zci(wt);
    plotzerocrossing = plot(wt(zx));
    plotzerocrossing.Marker = '*';
    title(ax2,'Zero-crossing points along the curve');
    ylabel(ax2,'scale');
    grid on;
end
return 
