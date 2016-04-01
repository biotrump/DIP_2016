function plotClass(image, label)
% Plot image by classes with different colors.
[d,n] = size(label);

color = 'brgmcyk';
m = length(color);
c = max(label);

figure(gcf);
clf;
hold on;
switch d
    case 2
        view(2);
        for i = 1:c
            idc = label==i;
%             plot(X(1,label==i),X(2,label==i),['.' color(i)],'MarkerSize',15);
            scatter(X(1,idc),X(2,idc),36,color(mod(i-1,m)+1));
        end
    case 3
        view(3);
        for i = 1:c
            idc = label==i;
%             plot3(X(1,idc),X(2,idci),X(3,idc),['.' idc],'MarkerSize',15);
            scatter3(X(1,idc),X(2,idc),X(3,idc),36,color(mod(i-1,m)+1));
        end
    otherwise
        error('ERROR: only support data of 2D or 3D.');
end
axis equal
grid on
hold off