# Ollama

Run LLMs locally. Pull and serve open-source models like Llama, Mistral, and more.

## Local Development

```bash
docker compose up
```

Pull a model:
```bash
docker exec -it ollama-ollama-1 ollama pull llama3.2
```

API available at `http://localhost:11434`.

## Deploy on StackBlaze

This template includes a `stackblaze.yaml` for deployment.
