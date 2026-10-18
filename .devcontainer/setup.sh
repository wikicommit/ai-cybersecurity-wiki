#!/usr/bin/env bash
set -euo pipefail

echo "==> Node.js: Claude Code, markdownlint-cli2"
npm install -g --silent @anthropic-ai/claude-code markdownlint-cli2

python -c "from markitdown import MarkItDown; print('markitdown ok')"
python -c "import pdfminer; print('pdfminer ok')"
claude --version
echo "==> Setup complete"
