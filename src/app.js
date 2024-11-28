"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
function generateInsertLabelSQLScript(inputDataArray) {
    var sqlStatements = inputDataArray.map(function (inputData) {
        return "IF NOT EXISTS (\n            SELECT 1 \n            FROM core.tb_jbpm_variavel_label \n            WHERE ds_nome_tarefa ILIKE '".concat(inputData.nomeTarefa, "'\n              AND nm_variavel ILIKE '").concat(inputData.nomeVariavel, "' \n              AND ds_nome_fluxo = '").concat(inputData.nomeFluxo, "'\n        ) THEN\n            INSERT INTO core.tb_jbpm_variavel_label (\n                nm_variavel, \n                ds_label_variavel, \n                ds_nome_tarefa, \n                ds_nome_fluxo\n            ) VALUES (\n                '").concat(inputData.nomeVariavel, "',\n                '").concat(inputData.labelVariavel, "',\n                '").concat(inputData.nomeTarefa, "',\n                '").concat(inputData.nomeFluxo, "'\n            );\n        ELSE\n            UPDATE core.tb_jbpm_variavel_label \n            SET ds_label_variavel = '").concat(inputData.labelVariavel, "'\n            WHERE ds_nome_tarefa ILIKE '").concat(inputData.nomeTarefa, "'\n              AND nm_variavel ILIKE '").concat(inputData.nomeVariavel, "' \n              AND ds_nome_fluxo = '").concat(inputData.nomeFluxo, "';\n        END IF;")
            .trim();
    }).join("\n\n");
    return "\n    DO $$\n    BEGIN\n        ".concat(sqlStatements, "\n    END $$;\n        ").trim();
}
function generateValidationLabelSQLScript(inputDataArray) {
    var sqlStatements = inputDataArray.map(function (inputData) {
        return "IF (SELECT 1 FROM core.tb_jbpm_variavel_label\n                WHERE ds_nome_tarefa ilike '".concat(inputData.nomeTarefa, "'\n                AND nm_variavel ilike '").concat(inputData.nomeVariavel, "'\n                AND ds_nome_fluxo = '").concat(inputData.nomeFluxo, "'\n                AND ds_label_variavel = '").concat(inputData.labelVariavel, "'\n                LIMIT 1 ) \n            THEN\n            RAISE NOTICE 'SUCESSO: Label ").concat(inputData.nomeVariavel, " em ").concat(inputData.nomeTarefa, " no fluxo ").concat(inputData.nomeFluxo, " atualizada com sucesso ';\n        ELSE\n            RAISE NOTICE 'ERRO: Falha ao atualizar label ").concat(inputData.nomeVariavel, " em ").concat(inputData.nomeTarefa, " no fluxo ").concat(inputData.nomeFluxo, "';\n        END IF;")
            .trim();
    }).join("\n\n");
    return "\n    DO $$\n    BEGIN\n        ".concat(sqlStatements, "\n    END $$;\n        ").trim();
}
function main() {
    var args = process.argv.slice(2);
    if (args.length === 0) {
        console.error("Por favor, forneça o caminho do arquivo JSON.");
        process.exit(1);
    }
    var jsonFilePath = args[0];
    if (!fs.existsSync(jsonFilePath)) {
        console.error("Arquivo n\u00E3o encontrado: ".concat(jsonFilePath));
        process.exit(1);
    }
    var sqlFileName = args[1];
    if (!sqlFileName) {
        console.error("Por favor, forneça o nome do arquivo a sql a ser gerado");
        process.exit(1);
    }
    var outputFilePath = path.join(__dirname, "..", "output");
    var outputInsertionFilePath = path.join(outputFilePath, "Script_" + sqlFileName + ".sql");
    var outputValidationFilePath = path.join(outputFilePath, "Validação_" + sqlFileName + ".sql");
    try {
        var rawData = fs.readFileSync(jsonFilePath, "utf-8");
        var inputDataArray = JSON.parse(rawData);
        var generatedInsertionSQL = generateInsertLabelSQLScript(inputDataArray);
        var generatedValitionSQL_1 = generateValidationLabelSQLScript(inputDataArray);
        fs.writeFile(outputInsertionFilePath, generatedInsertionSQL, function (error) {
            if (error) {
                console.error("Erro ao salvar o arquivo de insert gerado: ", error);
                process.exit(1);
            }
            fs.writeFile(outputValidationFilePath, generatedValitionSQL_1, function (error) {
                if (error) {
                    console.error("Erro ao salvar o arquivo de validação gerado: ", error);
                    process.exit(1);
                }
                console.log("Scripts de insert e validação gerados com sucesso em: ", outputFilePath);
            });
        });
    }
    catch (error) {
        console.error("Erro ao processar o arquivo JSON:", error);
        process.exit(1);
    }
}
main();
