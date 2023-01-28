FROM gitpod/workspace-full-vnc

RUN sudo add-apt-repository ppa:maarten-fonville/android-studio && 
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

RUN sudo apt install -y --no-install-recommends \
        android-sdk \
        lib32stdc++6 \
        android-studio \
        android-sdk-build-tools \
        android-sdk \
        android-sdk-platform-33

RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
