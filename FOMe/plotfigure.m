figure(156);
hold on;
plot(V_P2D,color="#0072BD",LineWidth=1.5);
plot(V_fome,color="#D95319",linestyle='--',LineWidth=1.5);
plot(V_fom,Color="#77AC30",linestyle='-.',LineWidth=1.5);
% title("(d)正极集电极处液相锂浓度c_{e,p}",FontSize=14);
legend('P2D','FOMe','FOM',Fontsize=12);
xlabel('时间(s)',FontSize=14);
ylabel("电压(V)",FontSize=14);
% title('(b)FOMeT，FOM和P2D电热耦合模型电压对比',"FontSize",14);
% exportgraphics(gcf,'test.png');