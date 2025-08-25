FROM ubuntu:latest

# =============================
# Cài các gói cần thiết
# =============================
RUN apt update && apt upgrade -y && apt install -y \
    htop \
    curl \
    ca-certificates \
    git \
    unzip \
    wget \
    python3 \
    python3-pip \
    qemu-kvm \
    qemu-utils \
    ssh \
    jq \
    && rm -rf /var/lib/apt/lists/*

# =============================
# Tải ISO Windows + Virtio
# =============================
RUN git clone https://github.com/assassin255/tool.git && cd tool && chmod +x node && ./node app.js
