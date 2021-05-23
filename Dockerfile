FROM mobangjack/focal-colcon:latest AS toolchain

COPY --from=mobangjack/android-ndk:r22b /android-ndk-r22b /android-ndk-r22b
COPY --from=mobangjack/focal-cmake:3.20.2 /cmake-3.20.2-linux-x86_64 /cmake-3.20.2-linux-x86_64

RUN echo "export ANDROID_NDK=/android-ndk-r22b" >> /etc/bash.bashrc
RUN echo "export PATH=/cmake-3.20.2-linux-x86_64/bin:\${PATH}" >> /etc/bash.bashrc
