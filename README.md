# Oracle Database Administration: Infrastructure & Lifecycle Lab 🛠️

Este repositório documenta a implementação prática e os procedimentos de administração realizados durante o curso **Oracle Database Explorer**. O projeto foca nos pilares de sustentação de um ambiente Oracle, abrangendo desde a arquitetura física e lógica até o gerenciamento crítico da instância.

---

## 🏗️ Arquitetura do Oracle Database
Este laboratório explorou a separação fundamental entre **Instância** e **Banco de Dados**:
- **Instância (SGA + Background Processes):** Gerenciamento de memória e processos operacionais que controlam o acesso aos dados.
- **Banco de Dados (Ficheiros Físicos):** Estrutura de armazenamento composta por Datafiles, Control Files e Redo Logs.

---

## 🛠️ Procedimentos Técnicos Realizados

### 1. Provisionamento Estruturado (DBCA)
Implementação de banco de dados utilizando o **Database Configuration Assistant**, seguindo as melhores práticas da Oracle:
- **Arquitetura Multitenant:** Configuração de um **Container Database (CDB)** para consolidação de instâncias.
- **Gerenciamento de Memória:** Definição e ajuste de áreas de memória SGA (System Global Area) e PGA (Program Global Area).
- **Storage:** Organização de diretórios e arquivos de dados.

### 2. Gerenciamento do Ciclo de Vida (Startup & Shutdown)
Domínio dos estados de transição da instância para operações de manutenção e recuperação:

| Estado | Comando | Descrição Técnica |
| :--- | :--- | :--- |
| **NOMOUNT** | `STARTUP NOMOUNT` | Inicialização da instância através da leitura do ficheiro de parâmetros (SPFILE/PFILE). |
| **MOUNT** | `ALTER DATABASE MOUNT` | Associação da instância ao banco de dados via leitura do **Control File**. |
| **OPEN** | `ALTER DATABASE OPEN` | Abertura de Datafiles e Redo Logs, disponibilizando o banco para transações. |

> **Nota de Administração:** Aplicação do comando `SHUTDOWN IMMEDIATE` para encerramento consistente do banco, garantindo que todas as transações ativas sejam finalizadas corretamente e a integridade dos dados seja preservada.

### 3. Conectividade e Oracle Net Services
Configuração de camadas de rede para acesso ao banco de dados:
- **Oracle Listener:** Configuração e monitoramento do processo que gerencia requisições de conexão.
- **Resolução de Nomes (TNS):** Configuração do ficheiro `tnsnames.ora` para definição de serviços de conexão para instâncias CDB e PDB.

---

## 📊 Scripts de Monitoramento e Administração
Os scripts desenvolvidos para suporte às atividades de DBA encontram-se na pasta `/scripts`:
- `health_check.sql`: Script para validação imediata do status da instância e dos bancos plugáveis (PDBs).
- `manage_instance.sql`: Automação de comandos de transição de estado.

---

## 🎓 Referência de Formação
- **Curso:** Oracle Database Explorer
- **Trilha:** Oracle Database Administration