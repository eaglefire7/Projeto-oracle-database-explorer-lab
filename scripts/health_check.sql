-- ======================================================
-- SCRIPT: Health Check - Oracle Database Explorer
-- Objetivo: Validar o status da instância e dos PDBs
-- ======================================================

SET PAGESIZE 50
SET LINESIZE 150
COLUMN name FORMAT A20
COLUMN status FORMAT A15

PROMPT [INFO] Verificando Status da Instância...
SELECT instance_name, host_name, status, database_status FROM v$instance;

PROMPT [INFO] Verificando Bancos Plugáveis (PDBs)...
SELECT name, open_mode, total_size/1024/1024 as size_mb FROM v$pdbs;

EXIT;