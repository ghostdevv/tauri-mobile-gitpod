FROM gitpod/workspace-full-vnc

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio 
RUN sudo apt update

RUN sudo apt install -y \
    libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev

RUN sudo apt install openjdk-11-jre openjdk-11-jdk -y

# RUN sudo apt install -y --no-install-recommends \
#         android-sdk \
#         lib32stdc++6 \
#         android-studio \
#         android-sdk-build-tools \
#         android-sdk

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV ANDROID_HOME="$HOME/.android"
ENV NDK_HOME="$ANDROID_HOME/ndk/25.0.8775105"

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O cmdline-tools.zip && \
    unzip cmdline-tools.zip && \
    mkdir ~/.android/cmdline-tools/latest -p && \
    mv cmdline-tools/* ~/.android/cmdline-tools/latest && \
    rm cmdline-tools && \