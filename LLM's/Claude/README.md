# 🤖 Prompts para Claude AI

Coleção de prompts otimizados especificamente para Claude (Anthropic).

## 📋 Sobre o Claude

Claude é uma família de modelos de IA desenvolvida pela Anthropic, conhecida por:
- ✅ Respostas detalhadas e bem estruturadas
- ✅ Excelente capacidade de raciocínio
- ✅ Segue instruções complexas com precisão
- ✅ Janela de contexto extensa (200k tokens)
- ✅ Ótimo para código, análise e documentação

## 🎯 Modelos Disponíveis

| Modelo | Quando Usar | Custo |
|--------|-------------|-------|
| **Claude Sonnet 4.5** | Uso diário, mais inteligente e eficiente | Moderado |
| **Claude Opus 4** | Tarefas complexas e críticas | Alto |
| **Claude Haiku** | Respostas rápidas e simples | Baixo |

## 📁 Categorias

### 🌐 [Desenvolvimento Web](./desenvolvimento-web/)
Prompts para React, Vue, Angular, Node.js, APIs REST, etc.

### ⚙️ [Backend](./backend/)
Arquitetura de APIs, bancos de dados, microsserviços, integrações.

### 🎨 [Frontend](./frontend/)
Componentes UI/UX, responsividade, animações, acessibilidade.

### 📱 [Mobile](./mobile/)
React Native, Flutter, desenvolvimento mobile híbrido.

### 🐛 [Debugging](./debugging/)
Identificação e correção de bugs, análise de logs, troubleshooting.

### 🔄 [Refactoring](./refactoring/)
Melhoria de código, otimização, clean code.

### 👀 [Code Review](./code-review/)
Análise crítica de código, sugestões de melhorias.

### 🧪 [Testing](./testing/)
Testes unitários, integração, E2E, TDD.

### 🏗️ [Arquitetura](./arquitetura/)
Design patterns, clean architecture, DDD, SOLID.

### ⚡ [Performance](./performance/)
Otimização de código, análise de performance, caching.

### 🔒 [Segurança](./seguranca/)
Best practices de segurança, validação, proteção contra ataques.

### 📝 [Documentação](./documentacao/)
README, API docs, comentários, diagramas.

### 📋 [Templates](./templates/)
Templates prontos para diferentes tipos de projetos.

### 🔄 [Workflow](./workflow/)
Fluxos de trabalho estruturados, metodologias de desenvolvimento.

## 🎓 Dicas para Usar Claude

### ✅ Boas Práticas

1. **Seja específico**: Claude funciona melhor com instruções detalhadas
   ```
   ❌ "Crie uma API"
   ✅ "Crie uma API REST em Node.js com Express, usando autenticação JWT e PostgreSQL"
   ```

2. **Use estrutura**: Claude aprecia organização
   ```markdown
   # Contexto
   [Explique o cenário]
   
   # Tarefa
   [O que precisa fazer]
   
   # Requisitos
   - Item 1
   - Item 2
   ```

3. **Exemplos ajudam**: Mostre o que você espera
   ```
   "Quero algo como isso: [exemplo]
   Mas adaptado para: [seu caso]"
   ```

4. **Incremental**: Para tarefas complexas, divida em etapas
   ```
   "Primeiro, analise X
   Depois, sugira Y
   Por fim, implemente Z"
   ```

### ⚡ Economize Tokens

- ✅ Use referências: "Como o código anterior, mas..."
- ✅ Peça apenas alterações: "Modifique apenas a função X"
- ✅ Reutilize contexto: "Baseado na nossa conversa..."
- ❌ Evite repetir código completo desnecessariamente

### 🎯 Formatação que Claude Entende Bem

```markdown
**Negrito** para ênfase
`código inline` para funções/variáveis
```blocos de código``` para snippets
> citações para contexto importante
- listas para requisitos
```

## 🤝 Como Contribuir

1. Teste seu prompt pelo menos 3 vezes
2. Verifique se funciona na versão do Claude especificada
3. Inclua exemplos reais de uso
4. Use o [template padrão](../TEMPLATE.md)
5. Adicione dicas úteis

## 🔗 Links Úteis

- [Documentação Claude](https://docs.anthropic.com/)
- [Claude.ai (Web)](https://claude.ai/)
- [API Anthropic](https://console.anthropic.com/)
- [Prompt Engineering Guide](https://docs.anthropic.com/claude/docs/prompt-engineering)

## 📊 Prompts Mais Populares

> Esta seção será atualizada com os prompts mais utilizados pela comunidade

---

**💡 Dica Final**: Claude aprende com o contexto da conversa. Se algo não saiu perfeito, refine suas instruções e tente novamente!