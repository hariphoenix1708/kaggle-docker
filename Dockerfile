# Use Kaggle's official Python image as base
FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y aria2 && rm -rf /var/lib/apt/lists/*

# Upgrade pip & setuptools
RUN pip install --no-cache-dir --upgrade pip setuptools==69.5.1
RUN pip install --no-cache-dir torch transformers==4.46.1

# Install required Python packages

RUN pip install --no-cache-dir \
    GitPython==3.1.32 \
    Pillow==9.5.0 \
    accelerate==0.31.0 \
    blendmodes==2022 \
    clean-fid==0.1.35 \
    diskcache==5.6.3 \
    einops==0.4.1 \
    facexlib==0.3.0 \
    fastapi==0.104.1 \
    gradio==4.40.0 \
    httpcore==0.15 \
    httpx==0.24.1 \
    inflection==0.5.1 \
    jsonmerge==1.8.0 \
    kornia==0.6.7 \
    lark==1.1.2 \
    numpy==1.26.2 \
    omegaconf==2.2.3 \
    open-clip-torch==2.20.0 \
    piexif==1.1.3 \
    protobuf==3.20.0 \
    psutil==5.9.5 \
    pytorch_lightning==1.9.4 \
    resize-right==0.0.2 \
    safetensors==0.4.2 \
    scikit-image==0.21.0 \
    spandrel==0.3.4 \
    spandrel-extra-arches==0.1.1 \
    tomesd==0.1.3 \
    torchdiffeq==0.2.3 \
    torchsde==0.2.6 \
    pillow-avif-plugin==1.4.3 \
    diffusers==0.31.0 \
    gradio_rangeslider==0.0.6 \
    gradio_imageslider==0.0.20 \
    loadimg==0.1.2 \
    tqdm==4.66.1 \
    peft==0.13.2 \
    pydantic==2.8.2 \
    huggingface-hub==0.26.2

# Set default working directory
WORKDIR /workspace
