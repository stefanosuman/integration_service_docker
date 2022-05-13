ARG FROM_IMAGE=osrf/ros2:devel
FROM $FROM_IMAGE

RUN mkdir -p ~/is_workspace
WORKDIR ~/is_workspace
RUN git clone https://github.com/eProsima/Integration-Service.git src/Integration-Service --recursive

