# ihome

Containerized [Claude Code](https://docs.anthropic.com/en/docs/claude-code) that runs anywhere Docker does.

## Install

```bash
git clone https://github.com/forrest321/ihome.git
cd ihome
./install.sh
```

This symlinks `ihome` to `~/.local/bin`. Make sure `~/.local/bin` is on your `PATH`.

## Usage

```bash
ihome .                   # start claude in current directory
ihome /path/to/project    # start claude in a specific project
```

The container image is built automatically on first run.

## Configuration

By default, ihome uses your existing Claude OAuth credentials from `~/.claude`.

To use a different provider or model, copy the example config and uncomment what you need:

```bash
cp .env.example .env
```

Supported providers:

| Provider | Key Variables |
|---|---|
| Anthropic API | `ANTHROPIC_API_KEY` |
| AWS Bedrock | `CLAUDE_CODE_USE_BEDROCK`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION` |
| Google Vertex | `CLAUDE_CODE_USE_VERTEX`, `CLOUD_ML_REGION`, `ANTHROPIC_VERTEX_PROJECT_ID` |

Set `ANTHROPIC_MODEL` to override the default model with any provider.

## Rebuild

To pick up a new Claude Code version:

```bash
docker rmi ihome-claude
ihome .
```
