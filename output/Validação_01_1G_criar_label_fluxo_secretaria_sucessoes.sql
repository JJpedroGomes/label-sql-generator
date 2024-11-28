DO $$
    BEGIN
        IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'avsMsgOperacao'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = '#{tramitacaoProcessualService.recuperaVariavel(''pje:tjce:fluxo:geral:msgOperacao'')}'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label avsMsgOperacao em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label avsMsgOperacao em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'aguardar_laudo_tecnico'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Aguardar laudo técnico'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label aguardar_laudo_tecnico em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label aguardar_laudo_tecnico em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'aguardar_decurso_prazo'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Aguardar decurso de prazo'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label aguardar_decurso_prazo em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label aguardar_decurso_prazo em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'aguardar_decurso_prazo_recurso'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Aguardar decurso de prazo de recurso'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label aguardar_decurso_prazo_recurso em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label aguardar_decurso_prazo_recurso em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'apensar'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Apensar processo'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label apensar em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label apensar em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'efetuar_calculo'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Elaborar cálculos'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label efetuar_calculo em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label efetuar_calculo em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'tratar_sisbajud'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Minutar Bloqueio/Desbloqueio - SISBAJUD'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label tratar_sisbajud em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label tratar_sisbajud em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'certificar_decurso_prazo'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Certificar decurso de prazo'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label certificar_decurso_prazo em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label certificar_decurso_prazo em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'certificar_transito_julgado'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Certificar trânsito em julgado'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label certificar_transito_julgado em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label certificar_transito_julgado em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'citar_intimar'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Citar/Intimar'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label citar_intimar em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label citar_intimar em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'controle_prec_rpv'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Controlar Precatório/RPV'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label controle_prec_rpv em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label controle_prec_rpv em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'gerenciar_audiencia'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Gerenciar audiência'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label gerenciar_audiencia em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label gerenciar_audiencia em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'gerenciar_pericia'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Gerenciar Perícia'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label gerenciar_pericia em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label gerenciar_pericia em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'expedir_alvara'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir alvará'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_alvara em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_alvara em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'expedir_carta_precatoria'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir carta precatória/rogatória'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_carta_precatoria em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_carta_precatoria em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'expedir_oficio'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir ofício'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_oficio em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_oficio em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'expedir_mandado'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir mandado'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_mandado em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_mandado em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'expedir_mandado_cartorio'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir mandado de Cartório'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_mandado_cartorio em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_mandado_cartorio em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'expedir_outros_documentos'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir outros documentos'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_outros_documentos em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_outros_documentos em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'expedir_ato_ordinatorio'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir ato ordinatório'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_ato_ordinatorio em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_ato_ordinatorio em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'expedir_edital'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Expedir edital'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label expedir_edital em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label expedir_edital em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'consultar_infojud_infoseg'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Consultar INFOJUD/INFOSEG'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label consultar_infojud_infoseg em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label consultar_infojud_infoseg em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'publicar_dje'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Elaborar publicação no DJE'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label publicar_dje em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label publicar_dje em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'consultar_renajud'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Consultar RENAJUD'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label consultar_renajud em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label consultar_renajud em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'controle_serasajud'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Consultar SERASAJUD'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label controle_serasajud em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label controle_serasajud em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD'
                AND nm_variavel ilike 'aguardar_cumprimento_diligencia'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Aguardar cumprimento de diligência'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label aguardar_cumprimento_diligencia em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label aguardar_cumprimento_diligencia em [Sec] - Outras Diligências - VERIFICAR PROCESSOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD'
                AND nm_variavel ilike 'registrar_fechamento_expediente'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Registrar fechamento manual de expediente'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label registrar_fechamento_expediente em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label registrar_fechamento_expediente em [Sec] - Outras Diligências - PROCESSAR DOCUMENTOS SEJUD no fluxo Análise de Secretaria - Sucessões';
        END IF;

IF (SELECT 1 FROM core.tb_jbpm_variavel_label
                WHERE ds_nome_tarefa ilike '[Sec] - Outras Diligências - ANALISAR PROCESSOS'
                AND nm_variavel ilike 'aguarda_julgamento_conflito_competencia'
                AND ds_nome_fluxo = 'Análise de Secretaria - Sucessões'
                AND ds_label_variavel = 'Aguardar julgamento de conflito de competência'
                LIMIT 1 ) 
            THEN
            RAISE NOTICE 'SUCESSO: Label aguarda_julgamento_conflito_competencia em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões atualizada com sucesso ';
        ELSE
            RAISE NOTICE 'ERRO: Falha ao atualizar label aguarda_julgamento_conflito_competencia em [Sec] - Outras Diligências - ANALISAR PROCESSOS no fluxo Análise de Secretaria - Sucessões';
        END IF;
    END $$;