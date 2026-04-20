FROM ollama/ollama:latest

# Install curl for the HEALTHCHECK and create a non-root user
RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/* \
    && useradd -m -u 1000 -s /bin/sh ollama

USER ollama

HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -sf http://localhost:11434/ || exit 1

EXPOSE 11434
