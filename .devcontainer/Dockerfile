FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

RUN pip install --no-cache-dir cffi pyyaml python-frontmatter requests 'markitdown[pdf]'

ARG LYCHEE_VERSION=0.15.0
RUN curl -fsSL \
  "https://github.com/lycheeverse/lychee/releases/download/v${LYCHEE_VERSION}/lychee-v${LYCHEE_VERSION}-x86_64-unknown-linux-gnu.tar.gz" \
  | tar xz -C /usr/local/bin lychee
