FROM mcr.microsoft.com/dotnet/sdk:5.0

ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID user
RUN useradd -g $GID -u $UID -m -s /bin/bash user
USER user
WORKDIR /workspace

