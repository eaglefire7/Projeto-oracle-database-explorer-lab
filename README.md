# Oracle Database Explorer: Administração de Infraestrutura 🛠️

Este repositório contém a documentação técnica e os laboratórios práticos realizados durante o curso **Oracle Database Explorer**. O foco do projeto é demonstrar a proficiência na gestão de instâncias Oracle, desde a arquitetura fundamental até à configuração de conectividade e ambientes Multitenant.

---

## 🏗️ 1. Arquitetura do Oracle Database
Um dos pilares deste laboratório foi a compreensão da separação entre **Instância** e **Banco de Dados**:
- **Instância (SGA + Background Processes):** Estruturas de memória e processos que gerem o acesso aos dados.
- **Banco de Dados (Ficheiros Físicos):** Datafiles, Control Files e Redo Logs que armazenam a informação permanentemente.

---

## 🛠️ 2. Guia de Atividades Passo a Passo

### A. Provisionamento com DBCA (Database Configuration Assistant)
O processo de criação do banco de dados foi realizado via interface gráfica (GUI) para garantir o cumprimento das melhores práticas da Oracle.
1. **Configuração de Armazenamento:** Definição de locais para ficheiros de dados e logs.
2. **Dimensionamento de Memória:** Configuração da SGA (System Global Area) e PGA (Program Global Area).
3. **Multitenant Architecture:** Criação de um **Container Database (CDB)** e um **Pluggable Database (PDB)** para isolamento de dados.

### B. Ciclo de Vida da Instância (Startup & Shutdown)
Domínio técnico dos estados de transição da base de dados, essencial para manutenção e resolução de problemas:

| Estado | Comando SQL | Descrição Técnica |
| :--- | :--- | :--- |
| **NOMOUNT** | `STARTUP NOMOUNT` | A instância é iniciada. Lê o ficheiro de parâmetros (SPFILE/PFILE) e aloca a memória SGA. |
| **MOUNT** | `ALTER DATABASE MOUNT` | A instância associa-se ao banco de dados através da leitura do **Control File**. |
| **OPEN** | `ALTER DATABASE OPEN` | Todos os ficheiros de dados e logs são abertos. O banco está disponível para os utilizadores. |

> **Dica de DBA:** Pratiquei o uso do `SHUTDOWN IMMEDIATE`, que encerra o banco de forma consistente, garantindo que não haja corrupção de dados ao terminar as transações ativas.

### C. Conectividade e Ferramentas de Acesso
Configuração do **Oracle Net Services** para permitir a comunicação entre aplicações e o servidor:
- **Listener:** Verificação do serviço que "ouve" as requisições na rede (porta 1521).
- **TNSNames:** Mapeamento de serviços para facilitar a ligação via **SQL*Plus** e **SQL Developer**.

---

## 📊 3. Scripts de Administração (Troubleshooting)
Na pasta `/scripts`, disponibilizo ferramentas para monitorização rápida do ambiente:
- `health_check.sql`: Valida o status da instância e dos PDBs.
- `check_memory.sql`: Monitoriza a utilização da SGA.

---

## 🗣️ Como explico este projeto numa Entrevista?

Ao ser questionado sobre este projeto, foco em três pontos:
1. **Poder de Diagnóstico:** "Sei identificar em qual fase de inicialização a instância falhou, o que reduz o tempo de inatividade (downtime)."
2. **Segurança de Dados:** "Entendo a importância dos ficheiros de Redo Log e Control Files para a integridade do banco."
3. **Escalabilidade:** "Com a arquitetura Multitenant, demonstrei como consolidar vários bancos (PDBs) numa única infraestrutura (CDB)."

---
## 🎓 Certificação Relacionada
- **Curso:** Oracle Database Explorer
- **Trilha:** Oracle Database Administration Specialist