Salve o conteúdo abaixo em um arquivo chamado `README.md` no seu repositório:

```markdown
# Gerador de Script SQL para Variáveis de Fluxo

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas no ambiente de desenvolvimento:

1. **Node.js** (versão 14 ou superior)  
   [Faça o download do Node.js aqui](https://nodejs.org/).

2. **Gerenciador de pacotes NPM**  
   O NPM já vem incluído com o Node.js. Para verificar se está instalado, execute:  
   ```bash
   node -v
   npm -v
   ```

3. **TypeScript**  
   Instale globalmente no ambiente de desenvolvimento com o comando:  
   ```bash
   npm install typescript --save-dev
   ```

4. **Arquivo JSON de entrada**  
   Prepare um arquivo JSON com os dados de entrada no seguinte formato:

   ```json
   [
       {
           "tarefa": "[Sec] - Outras Diligências - ANALISAR PROCESSOS SEJUD",
           "variavel": "emitir_alvara_eletronico",
           "fluxo": "Análise de SEJUD",
           "label": "Emitir alvará eletrônico - SAE"
       },
       {
           "tarefa": "[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD",
           "variavel": "emitir_boleto_eletronico",
           "fluxo": "Análise de SEJUD",
           "label": "Emitir boleto eletrônico - SAE"
       }
   ]
   ```

## Como executar o projeto

### 1. Instalar as dependências do projeto

Após clonar o repositório, entre na pasta do projeto e execute:

```bash
npm install
```

### 2. Compilar o código TypeScript para JavaScript

Compile o código TypeScript para JavaScript com o seguinte comando:

```bash
npx tsc src/app.ts
```

### 3. Executar o gerador

Para rodar o gerador, use o seguinte comando:  

```bash
node src/app.js <caminho_para_seu_json> <nome_do_arquivo_sql>
```

- **`<caminho_para_seu_json>`**: Caminho para o arquivo JSON de entrada.  
- **`<nome_do_arquivo_sql>`**: Nome base do arquivo SQL que será gerado.

O aplicativo separará automaticamente os scripts de *insert* e validação.  

#### Exemplo:

```bash
node src/app.js input/input.json 01_1G_criar_label_fluxo_secretaria
```

## Observações

- Certifique-se de que o arquivo JSON esteja no formato correto.  
- O TypeScript deve estar configurado para desenvolvimento local. Caso encontre problemas, verifique as versões instaladas com:  
  ```bash
  tsc -v
  node -v
  npm -v
  ```
```
