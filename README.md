Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas:

Node.js (versão 14 ou superior)
Gerenciador de pacotes NPM (já incluído com o Node.js)
TypeScript (npm install -g typescript)

Certifique-se de ter um arquivo JSON com os dados de entrada. O formato do JSON deve ser semelhante ao exemplo abaixo:

json
Copiar código
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

Como executar o projeto
1. Compilar o código TypeScript para JavaScript
Execute o seguinte comando para compilar o arquivo TypeScript:

npx tsc src/app.ts

2. Executar o gerador
Para rodar o gerador, use o comando abaixo:
O app ja separa para voce o script de insert e validação, na hora de informar o nome do script, passe apenas: 01_1G_criar_label_nova_tarefa

node src/app.js <caminho_para_seu_json> <nome_do_arquivo_sql>

Exemplo:
node src/app.js input/input.json 01_1G_criar_label_fluxo_secretaria
