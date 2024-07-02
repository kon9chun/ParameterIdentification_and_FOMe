% figure(156);
% hold on;
% plot(V_P2D,color="#0072BD",LineWidth=1.5);
% plot(V_fome,color="#D95319",linestyle='--',LineWidth=1.5);
% plot(V_fom,Color="#77AC30",linestyle='-.',LineWidth=1.5);
% % title("(d)正极集电极处液相锂浓度c_{e,p}",FontSize=14);
% legend('P2D','FOMe','FOM',Fontsize=12);
% xlabel('时间(s)',FontSize=14);
% ylabel("电压(V)",FontSize=14);
% % title('(b)FOMeT，FOM和P2D电热耦合模型电压对比',"FontSize",14);
% % exportgraphics(gcf,'test.png');

% load ceLn.txt;
% load ceLp.txt;
% load ceLsep.txt;
% 
% h=figure(1);
% clf;
% hold on;
% xlim([0,ceLp(end,1)]);
% ylim([850,1200]);
% pgon=polyshape([0 0 ceLn(end,1) ceLn(end,1)],[1200 850 850 1200]);
% plot(pgon,FaceColor=[0 0.4470 0.7410],LineStyle="none");
% pgon=polyshape([ceLsep(1,1) ceLsep(1,1) ceLsep(end,1) ceLsep(end,1)],[1200 850 850 1200]);
% plot(pgon,FaceColor=[0.4660 0.6740 0.1880],LineStyle="none");
% pgon=polyshape([ceLp(1,1) ceLp(1,1) ceLp(end,1) ceLp(end,1)],[1200 850 850 1200]);
% plot(pgon,FaceColor=[0.8500 0.3250 0.0980],LineStyle="none");
% plot(ceLn(:,1),ceLn(:,2),LineWidth=2);
% plot(ceLp(:,1),ceLp(:,2),LineWidth=2);
% plot(ceLsep(:,1),ceLsep(:,2),Color="#77AC30",LineWidth=2);
% plot([0 ceLp(end,1)],[1000 1000],LineWidth=2,LineStyle="--",Color='k');
% xlabel('电极厚度x(m)','fontsize',14);
% ylabel('液相锂离子浓度(mol/m^3)','fontsize',14);

clear;
figure(2);
tiledlayout(2,2,'TileSpacing','Compact','Padding','Compact');
nexttile
load udds.txt;
plot(udds(900:900+1367,2),LineWidth=1.5)%udds 1367s
xlabel('时间(s)',"FontSize",14);
ylabel('电流(\times 1C)',"FontSize",14);
legend('UDDS',fontsize=12);
nexttile
load fuds.txt;
plot(fuds(661:661+1372,2),LineWidth=1.5)%fuds 1372s
xlabel('时间(s)',"FontSize",14);
ylabel('电流(\times 1C)',"FontSize",14);
legend('FUDS',fontsize=12);
nexttile
load nedc.txt;
plot(nedc(800:800+1160,2),LineWidth=1.5)%nedc 1160s
xlabel('时间(s)',"FontSize",14);
ylabel('电流(\times 1C)',"FontSize",14);
legend('NEDC',fontsize=12);
nexttile
load dst.txt;
plot(dst(1071:1415,2),LineWidth=1.5);
xlabel('时间(s)',"FontSize",14);
ylabel('电流(\times 1C)',"FontSize",14);
legend('DST',fontsize=12);