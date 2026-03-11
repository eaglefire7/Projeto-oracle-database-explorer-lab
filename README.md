\# Oracle Database Explorer: Hands-on Lab 🛠️



Repositório dedicado à documentação técnica e laboratórios práticos do curso \*\*Oracle Database Explorer\*\*. Aqui demonstro o domínio sobre a arquitetura Oracle, provisionamento e administração de instâncias.



---



\## 🏗️ Arquitetura e Overview

Entendimento profundo da separação entre \*\*Instância\*\* (Processos de Background + SGA) e \*\*Database\*\* (Arquivos físicos: Datafiles, Control Files e Redo Logs).



\## 🛠️ Atividades Realizadas



\### 1. Provisionamento com DBCA (Database Configuration Assistant)

\- Criação de um \*\*Container Database (CDB)\*\*.

\- Configuração de Storage e Gerenciamento de Memória Automática.

\- Demonstração de criação de um banco plugável (\*\*PDB\*\*) inicial.



\### 2. Ciclo de Vida da Instância (Startup \& Shutdown)

Domínio das fases de inicialização para manutenção e operação:

\* \*\*NOMOUNT:\*\* Leitura do SPFILE/PFILE.

\* \*\*MOUNT:\*\* Associação com o Control File.

\* \*\*OPEN:\*\* Acesso total aos dados.



> \*\*Nota Técnica:\*\* Prática de desligamento seguro utilizando `SHUTDOWN IMMEDIATE` para garantir a consistência dos dados sem corromper transações ativas.



\### 3. Conectividade e Ferramentas

Configuração e teste de acesso via:

\- \*\*SQL\*Plus\*\* (Linha de comando)

\- \*\*Oracle SQL Developer\*\* (GUI)

\- Configuração de \*\*Listener\*\* e resolução de nomes via \*\*TNSNames\*\*.



---



\## 📊 Scripts de Administração

Os scripts utilizados estão na pasta `/scripts`.

Exemplo de comando de verificação:

```sql

SELECT instance\_name, status FROM v$instance;

