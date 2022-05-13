ARG FROM_IMAGE=osrf/ros2:devel
FROM $FROM_IMAGE

RUN apt-get update && apt-get install -q -y --no-install-recommends \
    libyaml-cpp-dev
    
RUN mkdir -p ~/is_workspace
WORKDIR ~/is_workspace
RUN git clone https://github.com/eProsima/Integration-Service.git src/Integration-Service --recursive

RUN colcon \
    build \
    --cmake-args \
