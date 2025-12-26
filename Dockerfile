FROM ghcr.io/tbxark/mcp-proxy:latest

# 安装docker-cli工具
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# 保留原镜像的ENTRYPOINT和CMD
# ENTRYPOINT和CMD将继承自基础镜像
