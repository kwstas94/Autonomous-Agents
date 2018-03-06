world = vrworld('matdrone.wrl');
open(world);
fig = view(world);
drone = vrnode(world,'SDF_drone500_Transform');

drone.translation = [0 0 0];
desired_pose = [50 50 -50];
while 1==1
    trans = [0 0 0];
    actual_pose = drone.translation;
    if actual_pose(1) < desired_pose(1)
        trans(1) = 1;
    end
    if actual_pose(1) > desired_pose(1)
        trans(1) = -1;
    end
    if actual_pose(2) < desired_pose(2)
        trans(2) = 1;
    end
    if actual_pose(2) > desired_pose(2)
        trans(2) = -1;
    end
    if actual_pose(3) < desired_pose(3)
        trans(3) = 1;
    end
    if actual_pose(3) > desired_pose(3)
        trans(3) = -1;
    end
    drone.translation = drone.translation + trans;
    vrdrawnow;
    disp(drone.translation)
    pause(0.1);
end