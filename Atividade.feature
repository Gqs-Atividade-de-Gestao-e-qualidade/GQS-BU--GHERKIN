Funcionalidade: Cadastro inteligente dos usuários utilizando outras plataformas.
  Com o objetivo de ter um cadastro mais rápido e simplificado do candidato as vagas de emprego, O sistema puxa da plataforma google dados do usuário para uma candidatura simplificada ao sistema
 
   Cenario: O usuário está se candidatando a vaga.
    Dado o candidato esteja logado na conta google no navegador
    E tenha informações salvas na conta suficientes para o cadastro
    Quando o usuário clica no botão para candidatar a vaga
    Entao o usuário consegue se candidatar na plataforma
    E para as outras vagas, as informações ficam salvas na plataforma

   Cenario: O usuário não consegue a candidatura simplificada por falta de informação
    Dado o candidato esteja logado na conta google no navegador
    E não tenha informações salvas na conta suficientes para o cadastro
    Quando o usuário clica no botão para candidatar a vaga
    Entao o usuário precisa completar as informações faltantes do cadastro
    E para as outras vagas, as informações ficam salvas na plataforma

   Cenario: O usuário não consegue a candidatura simplificada por não estar logado
    Dado o candidato não esteja logado na conta google no navegador
    E não consiga logar na conta google
    Quando o usuário clica no botão para candidatar a vaga
    Entao o usuário precisa completar as informações do cadastro na plataforma
    E para as outras vagas, as informações não vão ficam salvas na plataforma

Funcionalidade: Limite de tempo para a vaga de emprego
   Cenario: A vaga tem um limite de tempo para permanecer online e a empresa não renova o tempo.
     Dado que o tempo limite já estipulado da vaga tenha sido vencido  
     E A empresa não renove o tempo limite
     Quando o tempo é excedido
     Entao a vaga e excluída para os candidatos
   Cenario: A vaga tem um limite de tempo para permanecer online e a empresa renova o tempo
      Dado: que o tempo limite já estipulado da vaga tenha sido vencido  
      E A empresa renove o tempo limite
      Quando o tempo é excedido
      Entao a vaga não é excluída para os candidatos

Funcionalidade: Perguntas pré-programadas
   Cenario: A empresa verifica a lista de perguntas e seleciona um pergunta pré-definida
     Dado Caso a empresa escolha perguntas para o usuário  
     Quando For cadastrar a vaga
     Entao As perguntas vão ser exibidas para o usuário
   Cenario: A empresa verifica a lista de perguntas e não seleciona um pergunta pré-definida
     Dado Caso a empresa não escolha perguntas para o usuário  
     Quando For cadastrar a vaga
     Entao As perguntas não vão ser exibidas para o usuário

Funcionalidade: Resposta pré-programadas
   Cenario: Quando o funcionário cadastra o currículo ele responde as perguntas pré-definidas pelo sistema
     Dado Caso o usuário escreva respostas para as perguntas
     Quando For se cadastrar para a vaga
     Entao As respostas vão ser exibidas para a empresa
   Cenario: Quando o funcionário cadastra o currículo ele opta por não responder as perguntas pré-definidas pelo sistema
     Dado Caso o usuário não escreva respostas para as perguntas
     Quando For se cadastrar para a vaga
     Entao As respostas não vão ser exibidas para a empresa

Funcionalidade: Recuperar login ou senha  
   Cenario: Usuário esqueceu a senha 
      Dado: o usuário não lembra a senha
      E acessa a página de login do site 
      Quando clicar no botão “esqueci minha senha” 
      E preenche com o email cadastrado no sistema para receber o token 
      E insere o token recebido 
      Quando o token é válido 
      Entao o usuário consegue criar uma nova senha.

   Cenario: Usuário não lembra o email cadastrado. 
      Dado: o usuário não lembra o email cadastrado
      E acessa a página de login do site 
      Quando clicar no botão “esqueci minha senha” 
      E preenche com o número de celular vinculado à conta para receber o sms com o token. 
      Quando o token é válido 
      Entao o usuário consegue visualizar o email vinculado ao telefone inserido.
      E consegue alterar a senha da conta.

Funcionalidade: Buscar vagas.			
   Cenario: Sistema exibe vagas disponíveis. 		
      Dado  que o usuário tenha selecionado uma área e/ou um cargo
      Quando digita em buscar vagas
      Entao  O sistema deve exibir as vagas disponíveis

   Cenario: Vaga não disponível
      Dado que o usuário tenha selecionado uma área e/ou um cargo
      E tenha inserido localização
      Quando digita em buscar vagas que não estejam disponíveis no banco de dados
      Entao O sistema deve exibir uma mensagem de “vagas indisponíveis”
      E permitir que o usuário faça uma nova busca

Funcionalidade: Logar no sistema

   Cenario: LOGIN VÁLIDO
      Dado que o usuário/empresa possui uma conta no site
      E  acessa a página de login
      E  preenche seu email e sua senha
      Quando ele seleciona a opção “logar” 
      Entao ele deve ser direcionado para a página inicial do site


   Cenario: LOGIN INVÁLIDO
      Dado que o usuário/empresa possui uma conta no site
      E  acessa a página de login		
      E  preenche o e-mail e/ou senha incorretos
      Quando ele seleciona a opção “logar” 
      Entao uma mensagem de e-mail e/ou senha incorreta deverá ser exibida para o usuário

Funcionalidade: Publicar currículo.
   Cenario: Perfil currículo.
      Dado: que  usuário possui um currículo já preenchido pelo portal
      E enviei o currículo para a vaga escolhida.   
      Entao uma mensagem deve aparecer ("currículo enviado com sucesso para a vaga escolhida")

   Cenario: sem perfil do currículo.
      Dado que o usuário não tenha currículo cadastrado.
      Entao o usuário poderá enviar um anexo para a vaga selecionada.

Funcionalidade: cadastrar usuário

   Cenario: Cadastrar usuário que aceite os termos de confidencialidade e as regras do site
      Dado que o usuário não possui uma conta no site
      E  acessa a página de login
      Quando ele seleciona a opção “cadastrar” 
      Entao ele deve ser direcionado para a página de cadastro para preencher suas informações pessoais
      E ele deve aceitar os termos de confidencialidade e as regras do site
      Quando ele seleciona a opção “SIM” para aceitar os termos de confidencialidade e regras do site 
      Entao uma mensagem de“Bem Vindo” deverá aparecer na tela 

   Cenario: Cadastrar usuário que não aceite os termos de confidencialidade e as regras do site
      Dado que o usuário não possui uma conta no site
      E  acessa a página de login
      Quando ele seleciona a opção “cadastrar”” 
      Entao ele deve ser direcionado para a página de cadastro para preencher suas informações pessoais
      Quando ele seleciona a opção “NÃO” para recusar os termos de confidencialidade e regras do site 
      Entao uma mensagem “ Como você não aceitou os termos e regras do site, não poderá prosseguir com o cadastro” deverá aparecer na tela 

Funcionalidade: Inscrever no processo seletivo

   Cenario: Inscrever no processo seletivo
      Dado que o usuário já tenha um currículo cadastrado no site e esteja logado 
      E  acessa a página de vagas
      Quando ele seleciona a opção “filtrar vagas” 
      Entao ele deve preencher os filtros de estado, bairro, cidade e cargos
      Quando ele seleciona uma vaga
      Entao uma mensagem de candidate-se a vaga deverá aparecer na tela

   Cenario:  Inscrever no processo seletivo sem currículo cadastrado
      Dado que o usuário não tenha um currículo cadastrado no site e esteja logado 
      E  acessa a página de vagas
      Quando ele seleciona a opção “buscar vagas” 
      Entao uma mensagem de “foi identificado que o seu currículo não está cadastrado no sistema” deverá ser exibida na tela

