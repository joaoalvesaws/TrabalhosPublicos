Projeto Desafio sala de aula -> realizado com Inteligência Artificial Claude, na versão Sonnet
Prompt utilizado:
Desenvolva um sistema web completo para gerenciamento anual de escalas de bombeiros.
 
Objetivo
 
Criar uma aplicação web capaz de gerar, gerenciar e ajustar automaticamente as escalas de plantão de uma equipe fixa de 12 bombeiros, respeitando regras de disponibilidade, férias, equilíbrio de carga horária e distribuição justa entre dias úteis e finais de semana/feriados.
 
Regras da Escala
Quantidade de Bombeiros
A corporação possui exatamente 12 bombeiros.
Cada bombeiro possui:
Nome de usuário único.
Nome completo.
Status (ativo, férias, afastado).
Restrições de datas.
Plantões
O horário do plantão é:
Das 08:00 às 20:00.
Cobertura Diária
Deve existir exatamente 1 bombeiro por dia.
Não pode existir dia sem bombeiro.
Não pode existir mais de 1 bombeiro no mesmo dia.
Tipos de Escala
Escala Preta
 
Dias úteis:
 
Segunda-feira
Terça-feira
Quarta-feira
Quinta-feira
Sexta-feira
Escala Vermelha
 
Dias especiais:
 
Sábados
Domingos
Feriados nacionais
Feriados estaduais
Feriados municipais cadastrados
Regras de Distribuição
 
O algoritmo de geração automática deve respeitar as seguintes regras:
 
Equidade de Plantões
 
A distribuição anual deve ser a mais equilibrada possível.
 
Exemplo:
 
Bombeiro A: 30 plantões
Bombeiro B: 31 plantões
 
Diferença máxima aceitável:
 
1 plantão.
Equidade de Escalas Vermelhas
 
Nenhum bombeiro pode ficar responsável pela maioria dos finais de semana e feriados.
 
A distribuição de escalas vermelhas deve ser praticamente igual para todos.
 
Exemplo:
 
Bombeiro A: 9 escalas vermelhas
Bombeiro B: 10 escalas vermelhas
 
Diferenças grandes não são permitidas.
 
Equidade de Escalas Pretas
 
A distribuição dos dias úteis também deve ser equivalente entre todos os bombeiros.
 
Balanceamento
 
Evitar que um bombeiro fique repetidamente:
 
Apenas durante a semana.
Apenas em finais de semana.
Apenas em feriados.
 
O sistema deve alternar os tipos de escala ao longo do ano.
 
Restrições Obrigatórias
Descanso
 
Um bombeiro não pode realizar plantões em dias consecutivos.
 
Exemplo:
 
✅ Permitido
 
01/01
03/01
 
❌ Não permitido
 
01/01
02/01
 
Em termos de regra:
 
Deve haver no mínimo 24 horas de intervalo sem plantão entre duas escalas.
Disponibilidade
 
Cada bombeiro poderá informar datas indisponíveis.
 
Estas datas:
 
Não podem ser utilizadas pelo gerador automático.
Devem ser bloqueadas visualmente no calendário.
Férias
 
Mais de um bombeiro pode estar de férias simultaneamente.
 
Durante as férias:
 
O bombeiro não pode receber plantões.
O algoritmo deve ignorá-lo naquele período.
Perfis de Usuário
Administrador
 
O usuário administrador deve poder:
 
Gestão de Escalas
Gerar escala anual automática.
Gerar escala mensal automática.
Editar escala manualmente.
Trocar plantões entre bombeiros.
Reprocessar a escala respeitando restrições.
Gestão de Bombeiros
Cadastrar bombeiros.
Editar bombeiros.
Desativar bombeiros.
Registrar férias.
Adicionar feriados.
Aprovação
 
Enviar escalas para aprovação.
 
O bombeiro poderá:
 
Aceitar a escala.
Solicitar revisão.
 
O administrador receberá a resposta.
 
Dashboard
 
Visualizar:
 
Quantidade de plantões por bombeiro.
Quantidade de escalas pretas.
Quantidade de escalas vermelhas.
Férias.
Trocas pendentes.
Solicitações de revisão.
Bombeiro
 
O usuário bombeiro deve poder:
 
Visualizar Escalas
Ver calendário anual.
Ver calendário mensal.
Ver seus próximos plantões.
Informar Restrições
 
Registrar datas em que não poderá assumir plantão.
 
Exemplos:
 
Consultas médicas.
Cursos.
Compromissos pessoais.
Solicitar Férias
 
Enviar solicitação de férias ao administrador.
 
Aceitar Escalas
 
Após receber a escala:
 
Aceitar.
Solicitar revisão.
Solicitar Trocas
 
Selecionar um de seus plantões.
 
Escolher outro bombeiro.
 
Enviar solicitação de troca.
 
O outro bombeiro recebe notificação.
 
Poderá:
 
Aceitar.
Recusar.
 
Se aceitar:
 
A troca deve ser validada automaticamente pelas regras da escala.
Caso viole alguma regra, deve exigir aprovação do administrador.
Sistema de Notificações
 
Criar sistema de notificações em tempo real para:
 
Nova escala disponível.
Solicitação de troca.
Aceite de troca.
Recusa de troca.
Solicitação de férias.
Aprovação de férias.
Solicitação de revisão da escala.
Aprovação ou rejeição da revisão.
 
Também enviar notificações por e-mail.
 
Calendário
 
Implementar calendário visual semelhante ao Google Calendar.
 
Cores:
 
Preto: escala preta.
Vermelho: escala vermelha.
Cinza: férias.
Azul: dias bloqueados por indisponibilidade.
Requisitos Técnicos
 
Desenvolver como uma aplicação web moderna utilizando:
 
Frontend: React + TypeScript
Backend: Node.js + NestJS
Banco de dados: PostgreSQL
ORM: Prisma
Autenticação: JWT
Controle de acesso por perfis (RBAC)
Interface responsiva
API REST documentada com Swagger
Algoritmo de Escala
 
O gerador automático deve funcionar como um motor de otimização que maximize:
 
Cobertura de todos os dias do ano.
Respeito às férias.
Respeito às restrições individuais.
Respeito ao descanso mínimo entre plantões.
Distribuição uniforme de plantões.
Distribuição uniforme de escalas pretas.
Distribuição uniforme de escalas vermelhas.
Menor número possível de ajustes manuais.
 
Ao final da geração, o sistema deve apresentar métricas de equilíbrio mostrando:
 
Total de plantões por bombeiro.
Total de escalas pretas.
Total de escalas vermelhas.
Desvio de distribuição.
Índice de justiça da escala (fairness score).
 
Desenvolva o sistema com arquitetura preparada para crescimento futuro, incluindo testes automatizados, auditoria de alterações, histórico de trocas e logs de todas as operações.