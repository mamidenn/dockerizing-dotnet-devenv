FROM mcr.microsoft.com/dotnet/sdk:5.0

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN groupadd -g $GROUP_ID user
RUN useradd -g $GROUP_ID -u $USER_ID -m -s /bin/bash user
USER user
WORKDIR /workspace

