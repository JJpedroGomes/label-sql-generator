DO $$
    BEGIN
        IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'avsMsgOperacao' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'avsMsgOperacao',
                '#{tramitacaoProcessualService.recuperaVariavel(''pje:tjce:fluxo:geral:msgOperacao'')}',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = '#{tramitacaoProcessualService.recuperaVariavel(''pje:tjce:fluxo:geral:msgOperacao'')}'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'avsMsgOperacao' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_laudo_tecnico' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'aguardar_laudo_tecnico',
                'Aguardar laudo técnico',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Aguardar laudo técnico'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_laudo_tecnico' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_decurso_prazo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'aguardar_decurso_prazo',
                'Aguardar decurso de prazo',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Aguardar decurso de prazo'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_decurso_prazo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'aguardar_decurso_prazo_recurso' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'aguardar_decurso_prazo_recurso',
                'Aguardar decurso de prazo de recurso',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Aguardar decurso de prazo de recurso'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'aguardar_decurso_prazo_recurso' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'apensar' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'apensar',
                'Apensar processo',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Apensar processo'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'apensar' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'efetuar_calculo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'efetuar_calculo',
                'Elaborar cálculos',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Elaborar cálculos'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'efetuar_calculo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'tratar_sisbajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'tratar_sisbajud',
                'Minutar Bloqueio/Desbloqueio - SISBAJUD',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Minutar Bloqueio/Desbloqueio - SISBAJUD'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'tratar_sisbajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'certificar_decurso_prazo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'certificar_decurso_prazo',
                'Certificar decurso de prazo',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Certificar decurso de prazo'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'certificar_decurso_prazo' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'certificar_transito_julgado' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'certificar_transito_julgado',
                'Certificar trânsito em julgado',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Certificar trânsito em julgado'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'certificar_transito_julgado' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'citar_intimar' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'citar_intimar',
                'Citar/Intimar',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Citar/Intimar'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'citar_intimar' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'controle_prec_rpv' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'controle_prec_rpv',
                'Controlar Precatório/RPV',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Controlar Precatório/RPV'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'controle_prec_rpv' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'gerenciar_audiencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'gerenciar_audiencia',
                'Gerenciar audiência',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Gerenciar audiência'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'gerenciar_audiencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'gerenciar_pericia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'gerenciar_pericia',
                'Gerenciar Perícia',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Gerenciar Perícia'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'gerenciar_pericia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_alvara' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_alvara',
                'Expedir alvará',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir alvará'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_alvara' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_carta_precatoria' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_carta_precatoria',
                'Expedir carta precatória/rogatória',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir carta precatória/rogatória'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_carta_precatoria' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'expedir_oficio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_oficio',
                'Expedir ofício',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir ofício'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'expedir_oficio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_mandado' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_mandado',
                'Expedir mandado',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir mandado'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_mandado' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_mandado_cartorio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_mandado_cartorio',
                'Expedir mandado de Cartório',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir mandado de Cartório'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_mandado_cartorio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'expedir_outros_documentos' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_outros_documentos',
                'Expedir outros documentos',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir outros documentos'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'expedir_outros_documentos' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_ato_ordinatorio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_ato_ordinatorio',
                'Expedir ato ordinatório',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir ato ordinatório'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'expedir_ato_ordinatorio' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_edital' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'expedir_edital',
                'Expedir edital',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Expedir edital'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'expedir_edital' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'consultar_infojud_infoseg' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'consultar_infojud_infoseg',
                'Consultar INFOJUD/INFOSEG',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Consultar INFOJUD/INFOSEG'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'consultar_infojud_infoseg' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'publicar_dje' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'publicar_dje',
                'Elaborar publicação no DJE',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Elaborar publicação no DJE'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'publicar_dje' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'consultar_renajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'consultar_renajud',
                'Consultar RENAJUD',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Consultar RENAJUD'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'consultar_renajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'controle_serasajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'controle_serasajud',
                'Consultar SERASAJUD',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Consultar SERASAJUD'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'controle_serasajud' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_cumprimento_diligencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'aguardar_cumprimento_diligencia',
                'Aguardar cumprimento de diligência',
                '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Aguardar cumprimento de diligência'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
              AND nm_variavel ILIKE 'aguardar_cumprimento_diligencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'registrar_fechamento_expediente' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'registrar_fechamento_expediente',
                'Registrar fechamento manual de expediente',
                '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Registrar fechamento manual de expediente'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
              AND nm_variavel ILIKE 'registrar_fechamento_expediente' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;

IF NOT EXISTS (
            SELECT 1 
            FROM core.tb_jbpm_variavel_label 
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'aguarda_julgamento_conflito_competencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
        ) THEN
            INSERT INTO core.tb_jbpm_variavel_label (
                nm_variavel, 
                ds_label_variavel, 
                ds_nome_tarefa, 
                ds_nome_fluxo
            ) VALUES (
                'aguarda_julgamento_conflito_competencia',
                'Aguardar julgamento de conflito de competência',
                '[Sec] - Outras Diligências - ANALISAR PROCESSOS',
                'Análise de Secretaria - Sucessões'
            );
        ELSE
            UPDATE core.tb_jbpm_variavel_label 
            SET ds_label_variavel = 'Aguardar julgamento de conflito de competência'
            WHERE ds_nome_tarefa ILIKE '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
              AND nm_variavel ILIKE 'aguarda_julgamento_conflito_competencia' 
              AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões';
        END IF;
    END $$;