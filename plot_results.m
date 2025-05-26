function plot_results(t, aX, vX, x, aY, vY, y)
    figure;
    subplot(3,1,1); plot(t, aX, 'r'); title('Acceleration X'); xlabel('Time'); ylabel('a_x');
    subplot(3,1,2); plot(t, vX, 'g'); title('Velocity X'); xlabel('Time'); ylabel('v_x');
    subplot(3,1,3); plot(t, x, 'b'); title('Position X'); xlabel('Time'); ylabel('x');

    figure;
    subplot(3,1,1); plot(t, aY, 'r'); title('Acceleration Y'); xlabel('Time'); ylabel('a_y');
    subplot(3,1,2); plot(t, vY, 'g'); title('Velocity Y'); xlabel('Time'); ylabel('v_y');
    subplot(3,1,3); plot(t, y, 'b'); title('Position Y'); xlabel('Time'); ylabel('y');

    figure;
    plot(x, y, 'k'); title('2D Trajectory'); xlabel('X Position'); ylabel('Y Position');
end
