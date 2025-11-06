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
  "workflow"
)

# Criar pasta raiz se não existir
mkdir -p PromptForge
cd PromptForge

# Contadores
created_count=0
skipped_count=0

# Criar estrutura para cada LLM
for llm in "${llms[@]}"; do
  echo "📁 Processando: $llm"
  
  # Criar pasta principal da LLM se não existir
  if [ ! -d "$llm" ]; then
    mkdir -p "$llm"
    echo "  ✅ Pasta $llm criada"
  else
    echo "  ⏭️  Pasta $llm já existe"
  fi
  
  # Criar subpastas de categorias
  for category in "${categories[@]}"; do
    if [ ! -d "$llm/$category" ]; then
      mkdir -p "$llm/$category"
      echo "    ✅ Subpasta $category criada"
      ((created_count++))
    else
      echo "    ⏭️  Subpasta $category já existe"
      ((skipped_count++))
    fi
  done
  
  # Criar README.md vazio na pasta da LLM se não existir
  if [ ! -f "$llm/README.md" ]; then
    touch "$llm/README.md"
    echo "  📄 README.md criado"
  else
    echo "  📄 README.md já existe"
  fi
done

echo ""
echo "✅ Estrutura processada com sucesso!"
echo ""
echo "📊 Resumo:"
echo "- ${#llms[@]} LLMs processadas"
echo "- ${#categories[@]} categorias por LLM"
echo "- $created_count pastas criadas"
echo "- $skipped_count pastas já existiam"
echo "- Total de pastas: $((${#llms[@]} * ${#categories[@]} + ${#llms[@]})) pastas"
echo ""
echo "📂 Estrutura em: $(pwd)"
echo ""
echo "🚀 Próximos passos:"
echo "1. cd PromptForge"
echo "2. git init (se ainda não inicializado)"
echo "3. Adicionar o README.md principal"
echo "4. git add ."
echo "5. git commit -m 'feat: estrutura inicial do PromptForge'"

# Criar um arquivo de resumo
cat > STRUCTURE.txt << EOF
PromptForge - Estrutura de Pastas
==================================

Total de LLMs: ${#llms[@]}
Total de Categorias: ${#categories[@]}
Pastas criadas nesta execução: $created_count
Pastas que já existiam: $skipped_count

LLMs Incluídas:
$(printf '  - %s\n' "${llms[@]}")

Categorias por LLM:
$(printf '  - %s\n' "${categories[@]}")

Gerado em: $(date)
EOF

echo ""
echo "📄 Arquivo STRUCTURE.txt atualizado com o resumo"