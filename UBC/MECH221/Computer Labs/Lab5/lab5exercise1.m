clear all
close all
clc

xlimit=3;
ylimit=4;
vvalues=[0.5 1 2 4 8 16];

w=linspace(0,xlimit,1000);
s=1i*w;

for l=1:3
    for k=1:length(vvalues)
        if l==1
            L=1;
            C=1;
            R=vvalues(k);
            title1='Amplitude (L=1,C=1)';
            title2='Phase Angle (L=1,C=1)';
            leg='R=';
        end 
        if l==2
            R=1;
            C=1;
            L=vvalues(k);
            title1='Amplitude (R=1,C=1)';
            title2='Phase Angle (R=1,C=1)';
            leg='L=';
        end 
        if l==3
            R=1;
            L=1;
            C=vvalues(k);
            title1='Amplitude (R=1,L=1)';
            title2='Phase Angle (R=1,L=1)';
            leg='C=';
        end 
        
        H=(R*L*C*s.^2)./(2*R*L*C*s.^2+L*s+2*R);

        amp=abs(H);
        phase=angle(H);

        if(k~=1)
            templeg=char(templeg,strcat(leg,num2str(vvalues(k))));
        else
            templeg=strcat(leg,num2str(vvalues(k)));
        end

        subplot(2,3,l)
        hold on
        plot(w,amp)
        title(title1)
        xlim([0 xlimit])
        ylim([0 ylimit])
        xlabel('$\omega$','Interpreter','Latex')
        ylabel('Amplitude')
        grid on
        legend(templeg)

        subplot(2,3,l+3)
        hold on
        plot(w,phase)
        title(title2)
        xlim([0 xlimit])
        ylim([0 ylimit])
        xlabel('$\omega$','Interpreter','Latex')
        ylabel('$\phi$','Interpreter','Latex')
        grid on
        legend(templeg)

    end
end

