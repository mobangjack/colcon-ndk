FROM mobangjack/focal-colcon:latest AS toolchain

COPY --from=mobangjack/android-ndk:r22b /android-ndk-r22b /android-ndk-r22b
RUN echo "export ANDROID_NDK=/android-ndk-${NDK_VERSION}" >> /etc/bash.bashrc

COPY --from=mobangjack/focal-cmake:3.20.2 /cmake-3.20.2-linux-x86_64 /cmake-3.20.2-linux-x86_64
RUN echo "export PATH=/cmake-3.20.2-linux-x86_64/bin:\${PATH}" >> /etc/bash.bashrc
