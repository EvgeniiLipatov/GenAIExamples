#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# Copyright (c) 2024 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: Apache-2.0

### The IP address or domain name of the server on which the application is running
export HOST_IP='10.53.22.29'
export EXTERNAL_HOST_IP=''

### The port of the vLLM service. On this port, the TGI service will accept connections
export EDGECRAFTRAG_VLLM_SERVICE_PORT=8028
### The port of the LLM service. On this port, the LLM service will accept connections
#export EDGECRAFTRAG_VLLM_SERVICE_PORT=9000
export EDGECRAFTRAG_VLLM_ENDPOINT="http://${HOST_IP}:${EDGECRAFTRAG_VLLM_SERVICE_PORT}"
#export EDGECRAFTRAG_VLLM_ENDPOINT="http://edgecraftrag-vllm-service:8011"
### Model ID
export EDGECRAFTRAG_LLM_MODEL_ID="Qwen/Qwen2-7B-Instruct"
#export EDGECRAFTRAG_LLM_MODEL_ID="Qwen/Qwen2.5-Coder-7B-Instruct"

export EDGECRAFTRAG_HUGGINGFACEHUB_API_TOKEN=${HUGGINGFACEHUB_API_TOKEN}

### The IP address or domain name of the server for EDGECRAFTRAG MegaService
export EDGECRAFTRAG_MEGA_SERVICE_HOST_IP=${HOST_IP}

### The port for EDGECRAFTRAG backend service
export EDGECRAFTRAG_BACKEND_SERVICE_PORT=18150

### The URL of EDGECRAFTRAG backend service, used by the frontend service
export EDGECRAFTRAG_BACKEND_SERVICE_URL="http://${EXTERNAL_HOST_IP}:${EDGECRAFTRAG_BACKEND_SERVICE_PORT}/v1/EDGECRAFTRAG"

### The endpoint of the LLM service to which requests to this service will be sent
export EDGECRAFTRAG_VLLM_SERVICE_HOST_IP=${HOST_IP}

### The EDGECRAFTRAG service UI port
export EDGECRAFTRAG_UI_SERVICE_PORT=18151

export MODEL_PATH=${PWD}/models
export DOC_PATH=${PWD}/docs
export UI_TMPFILE_PATH=${PWD}/ui_cache
export PROMPT_PATH=${PWD}/templates/custom
export HF_CACHE=${PWD}/cache
export HF_ENDPOINT=https://hf-mirror.com
