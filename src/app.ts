import * as fs from "fs";
import * as path from "path";

interface InputData {
    nomeFluxo    : string,
    nomeTarefa   : string,
    nomeVariavel : string,
    labelVariavel: string;
}

function generateInsertLabelSQLScript(inputDataArray: InputData[]): string {
    const sqlStatements: string = inputDataArray.map(inputData => 
        `IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '${inputData.nomeTarefa}'
              AND nm_variavel ILIKE '${inputData.nomeVariavel}' 
              AND ds_nome_fluxo = '${inputData.nomeFluxo}'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                '${inputData.nomeVariavel}',
                '${inputData.labelVariavel}',
                '${inputData.nomeTarefa}',
                '${inputData.nomeFluxo}'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = '${inputData.labelVariavel}'
            WHERE ds_nome_tarefa ILIKE '${inputData.nomeTarefa}'
              AND nm_variavel ILIKE '${inputData.nomeVariavel}' 
              AND ds_nome_fluxo = '${inputData.nomeFluxo}';
        END IF;`
        .trim()
    ).join("\n\n");
    
    return `
    DO $$
    BEGIN
        ${sqlStatements}
    END $$;
        `.trim();
}

function generateValidationLabelSQLScript(inputDataArray: InputData[]): string {
    const sqlStatements: string = inputDataArray.map(inputData => 
        `IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '${inputData.nomeTarefa}'
                AND nm_variavel ilike '${inputData.nomeVariavel}'
                AND ds_nome_fluxo = '${inputData.nomeFluxo}'
                AND ds_label_variavel = '${inputData.labelVariavel}'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label ${inputData.nomeVariavel} em ${inputData.nomeTarefa} no fluxo ${inputData.nomeFluxo} atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label ${inputData.nomeVariavel} em ${inputData.nomeTarefa} no fluxo ${inputData.nomeFluxo}';
        END IF;`
        .trim()
    ).join("\n\n");

    return `
    DO $$
    BEGIN
        ${sqlStatements}
    END $$;
        `.trim();
}

function main(): void {
    const args: string[] = process.argv.slice(2);
    if (args.length === 0) {
        console.error("Por favor, forneça o caminho do arquivo JSON.");
        process.exit(1);
    }

    const jsonFilePath: string = args[0];
    if (!fs.existsSync(jsonFilePath)) {
        console.error(`Arquivo não encontrado: ${jsonFilePath}`);
        process.exit(1);
    }

    const sqlFileName: string = args[1];
    if (!sqlFileName) {
        console.error("Por favor, forneça o nome do arquivo a sql a ser gerado");
        process.exit(1);
    }

    const outputFilePath = path.join(__dirname, "..", "output");
    const outputInsertionFilePath = path.join(outputFilePath, "Script_" + sqlFileName + ".sql");
    const outputValidationFilePath = path.join(outputFilePath, "Validação_" + sqlFileName + ".sql");

    try {
        const rawData: string = fs.readFileSync(jsonFilePath, "utf-8");
        const inputDataArray: InputData[] = JSON.parse(rawData);

        const generatedInsertionSQL: string = generateInsertLabelSQLScript(inputDataArray);
        const generatedValitionSQL: string = generateValidationLabelSQLScript(inputDataArray);
        
        fs.writeFile(outputInsertionFilePath, generatedInsertionSQL, (error) => {
            if (error) {
                console.error("Erro ao salvar o arquivo de insert gerado: ", error);
                process.exit(1);
            }
            fs.writeFile(outputValidationFilePath, generatedValitionSQL, (error) => {
                if (error) {
                    console.error("Erro ao salvar o arquivo de validação gerado: ", error);
                    process.exit(1);
                }
                console.log("Scripts de insert e validação gerados com sucesso em: ", outputFilePath);
            });
        });

    } catch (error) {
        console.error("Erro ao processar o arquivo JSON:", error);
        process.exit(1);
    }
}

main();
