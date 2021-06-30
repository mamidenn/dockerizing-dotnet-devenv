FROM mcr.microsoft.com/dotnet/sdk:5.0

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apt-get update && apt-get install -y zsh

RUN groupadd -g $GROUP_ID user
RUN useradd -g $GROUP_ID -u $USER_ID -m user
USER user

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WORKDIR /workspace
ENTRYPOINT zsh

