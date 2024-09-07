FROM nvidia/cuda:11.7.1-base-ubuntu22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHON_VERSION=3.10

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python${PYTHON_VERSION} \
    python${PYTHON_VERSION}-dev \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set Python 3.10 as the default python version
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python${PYTHON_VERSION} 1 \
    && update-alternatives --set python3 /usr/bin/python${PYTHON_VERSION}

# Install PyTorch and other Python packages
RUN pip3 install --no-cache-dir torch torchvision torchaudio
RUN pip3 install --no-cache-dir pytest

# Install fish shell
RUN apt-get update && apt-get install -y fish && rm -rf /var/lib/apt/lists/*

# Set fish as the default shell for the root user
RUN chsh -s /usr/bin/fish root

# Keep container running by using a long-running command
CMD ["tail", "-f", "/dev/null"]