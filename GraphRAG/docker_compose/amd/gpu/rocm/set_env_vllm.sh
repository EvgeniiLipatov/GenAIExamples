#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# Copyright (c) 2024 Advanced Micro Devices, Inc.
# SPDX-License-Identifier: Apache-2.0

### The IP address or domain name of the server on which the application is running
export host_ip=''


### The port of the vLLM service. On this port, the TGI service will accept connections
export GRAPHRAG_VLLM_SERVICE_PORT=8028
export GRAPHRAG_VLLM_ENDPOINT="http://${HOST_IP}:${GRAPHRAG_VLLM_SERVICE_PORT}"

### A token for accessing repositories with models
export GRAPHRAG_HUGGINGFACEHUB_API_TOKEN=${HUGGINGFACEHUB_API_TOKEN}

### Model ID
export GRAPHRAG_LLM_MODEL_ID="Qwen/Qwen2.5-Coder-7B-Instruct"

### The port of the LLM service. On this port, the LLM service will accept connections
export GRAPHRAG_LLM_SERVICE_PORT=9000

### The IP address or domain name of the server for GRAPHRAG MegaService
export GRAPHRAG_MEGA_SERVICE_HOST_IP=${HOST_IP}

### The port for GRAPHRAG backend service
export GRAPHRAG_BACKEND_SERVICE_PORT=18150

### The URL of GRAPHRAG backend service, used by the frontend service
export GRAPHRAG_BACKEND_SERVICE_URL="http://${EXTERNAL_HOST_IP}:${GRAPHRAG_BACKEND_SERVICE_PORT}/v1/GRAPHRAG"

### The endpoint of the LLM service to which requests to this service will be sent
export GRAPHRAG_LLM_SERVICE_HOST_IP=${HOST_IP}

### The GRAPHRAG service UI port
export GRAPHRAG_UI_SERVICE_PORT=18151

export DATAPREP_SERVICE_ENDPOINT="http://${host_ip}:5000/v1/dataprep/ingest"
export LOGFLAG=True

export MAX_INPUT_TOKENS=4096
export MAX_TOTAL_TOKENS=8192

export DATAPREP_PORT=11103
export RETRIEVER_PORT=11635

export NEO4J_PORT1=11631
export NEO4J_PORT2=11632
export NEO4J_URI="bolt://${host_ip}:${NEO4J_PORT2}"
export NEO4J_URL="bolt://${host_ip}:${NEO4J_PORT2}"
export NEO4J_USERNAME="neo4j"
export NEO4J_PASSWORD="neo4jtest