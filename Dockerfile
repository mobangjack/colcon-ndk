FROM mobangjack/focal-colcon:latest AS toolchain

COPY --from=mobangjack/android-ndk:r22b /android-ndk /android-ndk
