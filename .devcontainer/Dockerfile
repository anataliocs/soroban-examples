FROM mcr.microsoft.com/devcontainers/rust:1.0.9-1

ENV DEBIAN_FRONTEND=noninteractive \
    PKG_CONFIG_PATH='/usr/lib/pkgconfig:/usr/local/lib/pkgconfig:/usr/share/pkgconfig' \
    CARGO_REGISTRIES_CRATES_IO_PROTOCOL=sparse \
    CARGO_INCREMENTAL=0 \
    CARGO_TERM_QUIET=1 \
    CARGO_TERM_PROGRESS_WHEN=never \
    SCCACHE_DIR=/home/vscode/.cache/sccache \
    SCCACHE_CONF=/home/vscode/.config/sccache/config \
    SCCACHE_DIRECT=true \
    RUSTC_WRAPPER=sccache \
    SCCACHE_CACHE_SIZE=5G \
    RUST_VERSION=1.81

RUN apt-get update && apt-get install -y \
  libdbus-1-dev \
  libudev-dev \
  pkg-config \
  openssl && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN --mount=type=cache,target=/home/vscode/.cache/sccache
