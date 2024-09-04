whoqol = Survey.create!(
  title: "WHO: Quality of Life (WHOQOL)",
  interval_days: [90, 90, 180]
)

whoqol_01 = Question.create!(
  content: 'Como você avaliaria sua qualidade de vida?',
  survey: whoqol
)
whoqol_02 = Question.create!(
  content: 'Quão satisfeito(a) você está com a sua saúde?',
  survey: whoqol
)
whoqol_03 = Question.create!(
  content: 'Em que medida você acha que sua dor (física) impede você de fazer o que você precisa?',
  survey: whoqol
)
whoqol_04 = Question.create!(
  content: 'O quanto você precisa de algum tratamento médico para levar sua vida diária?',
  survey: whoqol
)
whoqol_05 = Question.create!(
  content: 'O quanto você aproveita a vida?',
  survey: whoqol
)
whoqol_06 = Question.create!(
  content: 'Em que medida você acha que a sua vida tem sentido?',
  survey: whoqol
)
whoqol_07 = Question.create!(
  content: 'O quanto você consegue se concentrar?',
  survey: whoqol
)
whoqol_08 = Question.create!(
  content: 'Quão seguro(a) você se sente em sua vida diária?',
  survey: whoqol
)
whoqol_09 = Question.create!(
  content: 'Quão saudável é o seu ambiente físico (clima, barulho, poluição, atrativos)?',
  survey: whoqol
)
whoqol_10 = Question.create!(
  content: 'Você tem energia suficiente para seu dia-a- dia?',
  survey: whoqol
)
whoqol_11 = Question.create!(
  content: 'Você é capaz de aceitar sua aparência física?',
  survey: whoqol
)
whoqol_12 = Question.create!(
  content: 'Você tem dinheiro suficiente para satisfazer suas necessidades?',
  survey: whoqol
)
whoqol_13 = Question.create!(
  content: 'Quão disponíveis para você estão as informações que precisa no seu dia-a-dia?',
  survey: whoqol
)
whoqol_14 = Question.create!(
  content: 'Em que medida você tem oportunidades de atividades de lazer?',
  survey: whoqol
)
whoqol_15 = Question.create!(
  content: 'Quão bem você é capaz de se locomover?',
  survey: whoqol
)
whoqol_16 = Question.create!(
  content: 'Quão satisfeito(a) você está com o seu sono?',
  survey: whoqol
)
whoqol_17 = Question.create!(
  content: 'Quão satisfeito(a) você está com sua Capacidade de desempenhar as atividades do seu dia-a-dia?',
  survey: whoqol
)
whoqol_18 = Question.create!(
  content: 'Quão satisfeito(a) você está com sua capacidade para o trabalho?',
  survey: whoqol
)
whoqol_19 = Question.create!(
  content: 'Quão satisfeito(a) você está consigo mesmo?',
  survey: whoqol
)
whoqol_20 = Question.create!(
  content: 'Quão satisfeito(a) você está com suas relações pessoais (amigos, parentes, conhecidos, colegas)?',
  survey: whoqol
)
whoqol_21 = Question.create!(
  content: 'Quão satisfeito(a) você está com sua vida sexual?',
  survey: whoqol
)
whoqol_22 = Question.create!(
  content: 'Quão satisfeito(a) você está com o apoio que você recebe de seus amigos?',
  survey: whoqol
)
whoqol_23 = Question.create!(
  content: 'Quão satisfeito(a) você está com as condições do local onde mora?',
  survey: whoqol
)
whoqol_24 = Question.create!(
  content: 'Quão satisfeito(a) você está com o seu acesso aos serviços de saúde?',
  survey: whoqol
)
whoqol_25 = Question.create!(
  content: 'Quão satisfeito(a) você está com o seu meio de transporte?',
  survey: whoqol
)
whoqol_26 = Question.create!(
  content: 'Com que frequência você tem sentimentos negativos tais como mau humor, desespero, ansiedade, depressão?',
  survey: whoqol
)

#

whoqol_27 = Question.create!(
  content: 'Alguém lhe ajudou a preencher este questionário?',
  survey: whoqol
)
whoqol_28 = Question.create!(
  content: 'Quanto tempo você levou para preencher este questionário?',
  survey: whoqol
)
whoqol_29 = Question.create!(
  content: 'Você tem algum comentário sobre o questionário?',
  survey: whoqol
)

#

# 1/2
# MUITO RUIM
# RUIM
# NEM RUIM NEM BOA
# BOA
# MUITO BOA

answers = [
  'MUITO RUIM',
  'RUIM',
  'NEM RUIM NEM BOA',
  'BOA',
  'MUITO BOA'
]  

questions = [ whoqol_01, whoqol_02 ]

questions.each do | question |
  answers.each do | answer |
    Answer.create!(
      content: answer,
      question: question
    )
  end
end

# # 3/9
# # NADA
# # MUITO POUCO
# # MAIS OU MENOS
# # BASTANTE
# # EXTREMAMENTE

# Answer.create!(
#   content: [
#     'NADA',
#     'MUITO POUCO',
#     'MAIS OU MENOS',
#     'BASTANTE',
#     'EXTREMAMENTE'
#   ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09 ]
# )

# Answer.create!(
#   content: [ 'NADA' ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09
#   ]
# )
# Answer.create!(
#   content: [ 'MUITO POUCO' ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09
#   ]
# )
# Answer.create!(
#   content: [ 'MAIS OU MENOS' ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09
#   ]
# )
# Answer.create!(
#   content: [ 'BASTANTE' ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09
#   ]
# )
# Answer.create!(
#   content: [ 'EXTREMAMENTE' ]
#   question: [
#     whoqol_03,
#     whoqol_04,
#     whoqol_05,
#     whoqol_06,
#     whoqol_07,
#     whoqol_08,
#     whoqol_09
#   ]
# )

# # 10/14
# # NADA
# # MUITO POUCO
# # MÉDIO
# # MUITO
# # COMPLETAMENTE

# Answer.create!(
#   content: [ 'NADA', 'MUITO POUCO', 'MÉDIO', 'MUITO', 'COMPLETAMENTE' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )

# Answer.create!(
#   content: [ 'NADA' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )
# Answer.create!(
#   content: [ 'MUITO POUCO' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )
# Answer.create!(
#   content: [ 'MÉDIO' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )
# Answer.create!(
#   content: [ 'MUITO' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )
# Answer.create!(
#   content: [ 'COMPLETAMENTE' ]
#   question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
# )

# # 15
# # MUITO RUIM
# # RUIM
# # NEM RUIM
# # NEM BOM
# # BOM
# # MUITO BOM

# Answer.create!(
#   content: [
#     'MUITO RUIM',
#     'RUIM',
#     'NEM RUIM',
#     'NEM BOM',
#     'BOM',
#     'MUITO BOM'
#   ]
#   question: [ whoqol_15 ]
# )

# Answer.create!(
#   content: [ 'MUITO RUIM' ]
#   question: [ whoqol_15 ]
# )
# Answer.create!(
#   content: [ 'MUITO RUIM'
#     'RUIM',
#     'NEM RUIM',
#     'NEM BOM',
#     'BOM',
#     'MUITO BOM'
#   ]
#   question: [ whoqol_15 ]
# )

# # 16/25
# # MUITO INSATISFEITO
# # INSATISFEITO
# # NEM SATISFEITO NEM INSATISFEITO
# # SATISFEITO
# # MUITO SATISFEITO

# Answer.create!(
#   content: [
#     'MUITO INSATISFEITO',
#     'INSATISFEITO',
#     'NEM SATISFEITO NEM INSATISFEITO',
#     'SATISFEITO',
#     'MUITO SATISFEITO'
#   ]
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# )

# Answer.create!(
#   content: ['MUITO INSATISFEITO']
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# )
# Answer.create!(
#   content: ['INSATISFEITO']
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# )
# Answer.create!(
#   content: ['NEM SATISFEITO NEM INSATISFEITO']
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# )
# Answer.create!(
#   content: ['SATISFEITO']
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# Answer.create!(
#   content: ['MUITO SATISFEITO']
#   question: [
#     whoqol_16,
#     whoqol_17,
#     whoqol_18,
#     whoqol_19,
#     whoqol_20,
#     whoqol_21,
#     whoqol_22,
#     whoqol_23,
#     whoqol_24,
#     whoqol_25,
#   ]
# )

# # 26
# # NUNCA
# # ALGUMAS VEZES
# # FREQUENTEMENTE
# # MUITO FREQUENTEMENTE
# # SEMPRE

# Answer.create!(
#   content: [
#     'NUNCA',
#     'ALGUMAS VEZES',
#     'FREQUENTEMENTE',
#     'MUITO FREQUENTEMENTE',
#     'SEMPRE'
#   ]
#   question: [ whoqol_26 ]
# )

# Answer.create!(
#   content: ['NUNCA']
#   question: [ whoqol_26 ]
# )
# Answer.create!(
#   content: ['ALGUMAS VEZES']
#   question: [ whoqol_26 ]
# )
# Answer.create!(
#   content: ['FREQUENTEMENTE']
#   question: [ whoqol_26 ]
# )
# Answer.create!(
#   content: ['MUITO FREQUENTEMENTE']
#   question: [ whoqol_26 ]
# )
# Answer.create!(
#   content: ['SEMPRE']
#   question: [ whoqol_26 ]
# )
