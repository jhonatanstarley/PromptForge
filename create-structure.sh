#!/bin/bash

# Script para criar estrutura do PromptForge
# Execute com: bash create-structure.sh

echo "🔨 Criando estrutura do PromptForge..."

# Array com todas as LLMs
llms=(
  "Claude"
  "GPT"
  "Gemini"
  "Grok"
  "DeepSeek"
  "Llama"
  "Mistral"
  "Cohere"
  "Perplexity"
  "Qwen"
  "Yi"
  "Falcon"
  "Copilot"
  "Cursor"
  "Codeium"
  "Tabnine"
  "Outros"
)

# Array com as categorias internas
categories=(
  "desenvolvimento-web"
  "backend"
  "frontend"
  "mobile"
  "debugging"
  "refactoring"
  "code-review"
  "testing"
  "arquitetura"
  "performance"
  "seguranca"
  "documentacao"
  "templates"
)

# Criar pasta raiz se não existir
mkdir -p PromptForge
cd PromptForge

# Criar estrutura para cada LLM
for llm in "${llms[@]}"; do
  echo "📁 Criando pasta: $llm"
  
  # Criar pasta principal da LLM
  mkdir -p "$llm"
  
  # Criar subpastas de categorias
  for category in "${categories[@]}"; do
    mkdir -p "$llm/$category"
  done
  
  # Criar README.md vazio na pasta da LLM
  touch "$llm/README.md"
done

echo ""
echo "✅ Estrutura criada com sucesso!"
echo ""
echo "📊 Resumo:"
echo "- ${#llms[@]} LLMs criadas"
echo "- ${#categories[@]} categorias por LLM"
echo "- Total de pastas: $((${#llms[@]} * ${#categories[@]} + ${#llms[@]})) pastas"
echo ""
echo "📂 Estrutura criada em: $(pwd)"
echo ""
echo "🚀 Próximos passos:"
echo "1. cd PromptForge"
echo "2. git init"
echo "3. Adicionar o README.md principal"
echo "4. git add ."
echo "5. git commit -m 'Initial structure'"

# Criar um arquivo de resumo
cat > STRUCTURE.txt << EOF
PromptForge - Estrutura de Pastas
==================================

Total de LLMs: ${#llms[@]}
Total de Categorias: ${#categories[@]}

LLMs Incluídas:
$(printf '  - %s\n' "${llms[@]}")

Categorias por LLM:
$(printf '  - %s\n' "${categories[@]}")

Gerado em: $(date)
EOF

echo ""
echo "📄 Arquivo STRUCTURE.txt criado com o resumo"