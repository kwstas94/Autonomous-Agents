world = vrworld('matdrone.wrl');
open(world);
fig = view(world);
drone = vrnode(world,'SDF_drone500_Transform');
%fields(drone);
while 1==1
    k = waitforbuttonpress;
    key = double(get(gcf,'CurrentCharacter'));
    %key
    if key == 28  %left arrow
        trans = drone.translation + [-1 0 0];
    end
    if key == 29  %right arrow
        trans = drone.translation + [1 0 0];
    end
    if key == 30  %up arrow
        trans = drone.translation + [0 0 1];
    end
    if key == 31  %down arrow
        trans = drone.translation + [0 0 -1];
    end
    if key == 97  % a
        trans = drone.translation + [0 1 0];
    end
    if key == 115  % s
        trans = drone.translation + [0 -1 0];
    end
    drone.translation = trans;
    vrdrawnow;
    disp(drone.translation)
    
end


