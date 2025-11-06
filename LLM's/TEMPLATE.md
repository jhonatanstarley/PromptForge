# [Nome Descritivo do Prompt]

## Contexto
Explique claramente:
- Para que serve este prompt
- Quando utilizá-lo
- Que problema ele resolve
- Qual o benefício de usar

Exemplo:
> Este prompt é ideal para criar APIs REST completas com autenticação JWT. Use quando precisar de uma estrutura base robusta e segura para iniciar um projeto backend.

## Prompt

```
[COLE SEU PROMPT AQUI]

Exemplo:
Você é um desenvolvedor backend especializado em Node.js.

Crie uma API REST com as seguintes características:
- Express.js
- Autenticação JWT
- Validação de dados com Joi
- PostgreSQL com Prisma
- Tratamento de erros centralizado
- Documentação Swagger

Estruture o projeto seguindo clean architecture.
```

## Exemplo de Uso

### Input
```
[Mostre um exemplo real do que você pergunta/pede]

Exemplo:
Crie endpoints para um sistema de blog com:
- Criar post
- Listar posts
- Editar post
- Deletar post
- Sistema de categorias
```

### Output Esperado
```
[Mostre o tipo de resposta que você recebe]

Exemplo:
```js
// src/routes/posts.js
const express = require('express');
const router = express.Router();
const postsController = require('../controllers/postsController');
const auth = require('../middleware/auth');

router.post('/', auth, postsController.create);
router.get('/', postsController.list);
// ...
```
```

## Variações do Prompt

Se aplicável, mostre variações úteis:

```markdown
**Para projetos menores:**
[versão simplificada]

**Para projetos enterprise:**
[versão mais robusta]

**Para iniciantes:**
[versão mais didática com explicações]
```

## Dicas

Lista de dicas práticas para usar este prompt:

- **Dica 1**: Sempre especifique a versão das tecnologias
- **Dica 2**: Se o resultado não for ideal, peça para "refatorar" ou "melhorar"
- **Dica 3**: Use este prompt como base e adapte para seu contexto
- **Dica 4**: Funciona melhor quando você fornece exemplos do que deseja
- **Dica 5**: Pode ser combinado com [outro prompt relacionado]

## Limitações Conhecidas

Seja honesto sobre o que o prompt NÃO faz bem:

- ⚠️ Não inclui testes automaticamente (peça separadamente)
- ⚠️ Pode gerar código verboso em alguns casos
- ⚠️ Requer ajuste fino para projetos muito específicos

## Versão da LLM Testada

Especifique onde foi testado:
- Claude Sonnet 4.5 (Data: Nov/2024)
- Claude Opus 4 (Data: Out/2024)
- Outras versões: [lista]

## Tags

Adicione tags para facilitar busca:
`#nodejs` `#api` `#backend` `#jwt` `#authentication` `#express`

## Contribuidor

[@seu-usuario](https://github.com/seu-usuario)

---

## 📝 Checklist para Publicar

Antes de fazer o PR, verifique:
- [ ] Testei o prompt pelo menos 3 vezes
- [ ] Incluí exemplo real de uso
- [ ] Especifiquei a versão da LLM
- [ ] Adicionei dicas úteis
- [ ] Revisei ortografia e formatação
- [ ] O prompt realmente funciona como descrito