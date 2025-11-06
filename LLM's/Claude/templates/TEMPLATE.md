# [Nome Descritivo do Prompt] para Claude

## Contexto
Explique claramente para que serve e quando usar este prompt específico para Claude.

**Por que funciona bem no Claude:**
- Aproveita a janela de contexto extensa (200k tokens)
- Usa a capacidade de raciocínio estruturado do Claude
- Explora a precisão do Claude em seguir instruções complexas
- [Outras características específicas]

**Quando usar:**
- Cenário 1
- Cenário 2
- Cenário 3

## Prompt

```
[COLE SEU PROMPT AQUI]

DICAS ESPECÍFICAS PARA CLAUDE:
- Use XML tags se precisar de estrutura clara: <contexto>, <tarefa>, <output>
- Claude funciona bem com instruções em etapas numeradas
- Seja explícito sobre o formato de saída esperado
- Use "pense passo a passo" para tarefas complexas

Exemplo de estrutura otimizada:

<contexto>
[Descreva o cenário]
</contexto>

<tarefa>
Você é um [papel específico].

Sua missão:
1. [Primeira etapa]
2. [Segunda etapa]
3. [Terceira etapa]
</tarefa>

<requisitos>
- Requisito 1
- Requisito 2
- Requisito 3
</requisitos>

<formato_saida>
[Descreva exatamente como quer a resposta]
</formato_saida>
```

## Exemplo de Uso

### Input
```
[Mostre exatamente o que você envia para o Claude]

Exemplo real:
<contexto>
Estou construindo uma API de e-commerce com Node.js
</contexto>

<tarefa>
Crie o módulo de autenticação com:
- JWT tokens
- Refresh tokens
- Rate limiting
- Validação de email
</tarefa>
```

### Output Esperado
```
[Cole a resposta que o Claude gerou]

O Claude deve retornar código estruturado, explicações claras
e seguir exatamente o formato que você pediu.

Exemplo:
```js
// auth/jwt.service.js
const jwt = require('jsonwebtoken');

class JWTService {
  generateAccessToken(userId) {
    return jwt.sign(
      { userId, type: 'access' },
      process.env.JWT_SECRET,
      { expiresIn: '15m' }
    );
  }
  
  generateRefreshToken(userId) {
    return jwt.sign(
      { userId, type: 'refresh' },
      process.env.REFRESH_SECRET,
      { expiresIn: '7d' }
    );
  }
}
```
```

## Otimizações Específicas para Claude

### 🎯 Use XML Tags para Estrutura Clara
```markdown
Claude entende muito bem XML tags:

<instrucoes>
[Suas instruções]
</instrucoes>

<exemplos>
[Exemplos do que você quer]
</exemplos>

<restricoes>
[O que NÃO fazer]
</restricoes>
```

### 🧠 Aproveite o Raciocínio do Claude
```markdown
Para problemas complexos, peça:
"Analise passo a passo:
1. Identifique o problema
2. Liste possíveis soluções
3. Escolha a melhor abordagem
4. Implemente"
```

### 💬 Use Continuações
```markdown
Se a resposta foi cortada:
"Continue de onde parou"

Se precisa expandir:
"Explique mais detalhadamente a parte X"

Se algo não está bom:
"Refatore a função Y para ser mais eficiente"
```

### 📊 Formato de Saída Estruturado
```markdown
Claude é excelente em seguir templates. Defina claramente:

"Retorne no formato:
## Análise
[sua análise]

## Código
```js
[código]
```

## Testes
```js
[testes]
```

## Explicação
[explicação linha por linha]"
```

## Variações do Prompt

### Para Projetos Simples
```
[Versão minimalista focada em velocidade]
```

### Para Projetos Complexos
```
[Versão detalhada com múltiplas etapas]
- Use <etapa_1>, <etapa_2> para organizar
- Peça validação antes de continuar
- Solicite explicações detalhadas
```

### Para Aprendizado
```
[Versão didática com explicações]
"Explique como se eu fosse iniciante"
"Inclua comentários explicativos no código"
"Mostre alternativas e trade-offs"
```

## Dicas de Economia de Tokens

Claude tem 200k tokens, mas ainda assim:

- ✅ **Referencie**: "Como no código anterior, mas adapte X"
- ✅ **Incremental**: "Agora adicione Y ao que já criamos"
- ✅ **Foque**: "Modifique apenas a função authenticate()"
- ✅ **Reutilize**: "Baseado na estrutura que você criou..."
- ❌ **Evite**: Pedir código completo repetidamente

## Comportamentos do Claude

**O que Claude faz MUITO BEM:**
- ✅ Seguir instruções complexas e detalhadas
- ✅ Manter contexto ao longo da conversa
- ✅ Raciocinar sobre problemas antes de resolver
- ✅ Gerar código limpo e bem estruturado
- ✅ Explicar decisões tomadas
- ✅ Refatorar e melhorar código existente

**Limitações conhecidas:**
- ⚠️ Pode ser verboso (ajuste pedindo "seja mais conciso")
- ⚠️ Tende a ser conservador (peça "seja mais criativo" se necessário)
- ⚠️ Pode gerar código defensivo demais (especifique nível de validação)

## Comandos Úteis para Claude

```markdown
Para análise:
"Analise este código e identifique problemas"

Para refatoração:
"Refatore seguindo clean code e SOLID"

Para debugging:
"Identifique o bug neste código: [código]"

Para otimização:
"Otimize para performance sem perder legibilidade"

Para documentação:
"Documente este código com JSDoc completo"

Para testes:
"Crie testes unitários com Jest"

Para explicação:
"Explique linha por linha o que este código faz"
```

## Troubleshooting

### Se o Claude não entendeu:
1. Reformule usando XML tags
2. Divida em etapas menores
3. Forneça exemplos do output esperado

### Se a resposta está incompleta:
1. "Continue"
2. "Complete a resposta anterior"
3. "Mostre o restante do código"

### Se não ficou como esperava:
1. "Refatore de forma mais [específica/simples/robusta]"
2. "Adapte para o padrão [X]"
3. "Simplifique mantendo funcionalidade"

## Versão do Claude Testada

- [x] Claude Sonnet 4.5 (Nov/2024) - ⭐ Recomendado
- [ ] Claude Opus 4 (Out/2024)
- [ ] Claude Haiku (versão)

**Notas de compatibilidade:**
- Funciona melhor em: Sonnet 4.5
- Limitações em: [se houver]
- Ajustes necessários para: [se houver]

## Tokens Aproximados

Estimativa de uso:
- Prompt: ~XXX tokens
- Resposta média: ~XXX tokens
- Total por interação: ~XXX tokens

💡 **Dica**: Use o contador de tokens do Claude para precisão

## Tags

`#claude` `#categoria` `#tecnologia` `#use-case`

## Contribuidor

[@seu-usuario](https://github.com/seu-usuario)

**Data de criação**: DD/MM/AAAA  
**Última atualização**: DD/MM/AAAA

---

## 📋 Checklist de Qualidade

Antes de publicar, verifique:

**Testes:**
- [ ] Testei pelo menos 3 vezes no Claude
- [ ] Funciona consistentemente
- [ ] Testei em conversas longas (contexto estendido)

**Documentação:**
- [ ] Incluí exemplo real completo (input + output)
- [ ] Adicionei otimizações específicas do Claude
- [ ] Listei limitações conhecidas
- [ ] Especifiquei versão testada

**Qualidade:**
- [ ] Prompt está claro e objetivo
- [ ] Usa características únicas do Claude
- [ ] Inclui comandos úteis para iteração
- [ ] Tem dicas de troubleshooting

**Formato:**
- [ ] Markdown formatado corretamente
- [ ] Código com syntax highlighting
- [ ] Sem erros de português
- [ ] Links funcionando

---

## 🎓 Recursos Adicionais

- [Guia de Prompt Engineering do Claude](https://docs.anthropic.com/claude/docs/prompt-engineering)
- [Best Practices Anthropic](https://docs.anthropic.com/claude/docs/best-practices)
- [Claude API Reference](https://docs.anthropic.com/claude/reference)
- [Exemplos da Comunidade](../README.md)