FROM mobangjack/focal-colcon:latest AS toolchain

COPY --from=mobangjack/android-ndk:latest /android-ndk /android-ndk
ENV ANDROID_NDK=/android-ndk
RUN echo "export ANDROID_NDK=${ANDROID_NDK}" >> /etc/profile