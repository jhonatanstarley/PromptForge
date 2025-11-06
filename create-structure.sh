#!/bin/bash
# Script para criar estrutura do PromptForge com .gitkeep
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
gitkeep_count=0

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
    
    # Criar .gitkeep se a pasta estiver vazia
    if [ -z "$(ls -A "$llm/$category" 2>/dev/null)" ]; then
      touch "$llm/$category/.gitkeep"
      ((gitkeep_count++))
      echo "    📌 .gitkeep adicionado em $category"
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
echo "- $gitkeep_count arquivos .gitkeep adicionados"
echo "- Total de pastas: $((${#llms[@]} * ${#categories[@]} + ${#llms[@]})) pastas"
echo ""
echo "📂 Estrutura em: $(pwd)"
echo ""
echo "🚀 Próximos passos:"
echo "1. git add ."
echo "2. git commit -m 'feat: estrutura inicial com .gitkeep'"
echo "3. git push origin main"

# Criar um arquivo de resumo
cat > STRUCTURE.txt << EOF
PromptForge - Estrutura de Pastas
==================================

Total de LLMs: ${#llms[@]}
Total de Categorias: ${#categories[@]}
Pastas criadas nesta execução: $created_count
Pastas que já existiam: $skipped_count
Arquivos .gitkeep criados: $gitkeep_count

LLMs Incluídas:
$(printf '  - %s\n' "${llms[@]}")

Categorias por LLM:
$(printf '  - %s\n' "${categories[@]}")

Gerado em: $(date)
EOF

echo ""
echo "📄 Arquivo STRUCTURE.txt atualizado com o resumo"
echo ""
echo "🎯 Dica: O .gitkeep permite que o Git rastreie pastas vazias!"