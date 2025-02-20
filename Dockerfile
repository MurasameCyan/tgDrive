# 使用ARM64的Python 3.9 Slim镜像
FROM arm64v8/python:3.9-slim

# 设置工作目录
WORKDIR /app

# 安装必要的依赖项
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 克隆代码仓库
RUN git clone https://github.com/SkyDependence/tgDrive.git ./

# 安装Python依赖包
RUN pip install -r requirements.txt

# 设置环境变量
ENV PYTHONUNBUFFERED=1

# 运行命令
CMD ["python3", "main.py"]
```
