function [] = plot_arm(org, P1, P2, P3, L1, L2, L3)
    figure(1);
    radii = L1 + L2 + L3;

    plot([org(1, 1), P1(1, 1)], [org(2, 1), P1(2, 1)], 'LineWidth', 2);
    axis equal;
    xlim([-radii*1.1 radii*1.1]);
    ylim([-radii*1.1 radii*1.1]);
    
    hold on;
    plot([P1(1, 1), P2(1, 1)], [P1(2, 1), P2(2, 1)], 'LineWidth', 2);
    axis equal;
    xlim([-radii*1.1 radii*1.1]);
    ylim([-radii*1.1 radii*1.1]);

    hold on;
    plot([P2(1, 1), P3(1, 1)], [P2(2, 1), P3(2, 1)], 'LineWidth', 2);
    axis equal;
    xlim([-radii*1.1 radii*1.1]);
    ylim([-radii*1.1 radii*1.1]);
    
    hold on;
    plot(org(1, 1), org(2, 1), 'o', 'Color','k', 'LineWidth', 2);
    hold on;
    plot(P1(1, 1), P1(2, 1), 'o', 'Color','k', 'LineWidth', 2);
    hold on;
    plot(P2(1, 1), P2(2, 1), 'o', 'Color','k', 'LineWidth', 2);
    hold on;
    plot(P3(1, 1), P3(2, 1), 'o', 'Color','k', 'LineWidth', 2);

    viscircles([0, 0], radii, 'Color', 'r');
    xlabel('$x [m]$', 'interpreter', 'latex', 'fontsize', 12);
    ylabel('$y [m]$', 'interpreter', 'latex', 'fontsize', 12);
    title('Robot Arm Simulation', 'interpreter', 'latex', 'fontsize', 12);
    pause(0.01);

    hold off;
    hold off;
end