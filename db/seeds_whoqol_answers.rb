# 1/2
# MUITO RUIM
# RUIM
# NEM RUIM NEM BOA
# BOA
# MUITO BOA

Answer.create!(
  content: [
    'MUITO RUIM',
    'RUIM',
    'NEM RUIM NEM BOA',
    'BOA',
    'MUITO BOA'
  ]
  question: [ whoqol_01, whoqol_02 ]
)

Answer.create!(
  content: 'MUITO RUIM',
  question: [ whoqol_01, whoqol_02 ]
)
Answer.create!(
  content: 'RUIM',
  question: [ whoqol_01, whoqol_02 ]
)
Answer.create!(
  content: 'NEM RUIM NEM BOA',
  question: [ whoqol_01, whoqol_02 ]
)
Answer.create!(
  content: 'BOA',
  question: [ whoqol_01, whoqol_02 ]
)
Answer.create!(
  content: 'MUITO BOA',
  question: [ whoqol_01, whoqol_02 ]
)

# 3/9
# NADA
# MUITO POUCO
# MAIS OU MENOS
# BASTANTE
# EXTREMAMENTE

Answer.create!(
  content: [
    'NADA',
    'MUITO POUCO',
    'MAIS OU MENOS',
    'BASTANTE',
    'EXTREMAMENTE'
  ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09 ]
)

Answer.create!(
  content: [ 'NADA' ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09
  ]
)
Answer.create!(
  content: [ 'MUITO POUCO' ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09
  ]
)
Answer.create!(
  content: [ 'MAIS OU MENOS' ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09
  ]
)
Answer.create!(
  content: [ 'BASTANTE' ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09
  ]
)
Answer.create!(
  content: [ 'EXTREMAMENTE' ]
  question: [
    whoqol_03,
    whoqol_04,
    whoqol_05,
    whoqol_06,
    whoqol_07,
    whoqol_08,
    whoqol_09
  ]
)

# 10/14
# NADA
# MUITO POUCO
# MÉDIO
# MUITO
# COMPLETAMENTE

Answer.create!(
  content: [ 'NADA', 'MUITO POUCO', 'MÉDIO', 'MUITO', 'COMPLETAMENTE' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)

Answer.create!(
  content: [ 'NADA' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)
Answer.create!(
  content: [ 'MUITO POUCO' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)
Answer.create!(
  content: [ 'MÉDIO' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)
Answer.create!(
  content: [ 'MUITO' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)
Answer.create!(
  content: [ 'COMPLETAMENTE' ]
  question: [ whoqol_10, whoqol_11, whoqol_12, whoqol_13, whoqol_14 ]
)

# 15
# MUITO RUIM
# RUIM
# NEM RUIM
# NEM BOM
# BOM
# MUITO BOM

Answer.create!(
  content: [
    'MUITO RUIM',
    'RUIM',
    'NEM RUIM',
    'NEM BOM',
    'BOM',
    'MUITO BOM'
  ]
  question: [ whoqol_15 ]
)

Answer.create!(
  content: [ 'MUITO RUIM' ]
  question: [ whoqol_15 ]
)
Answer.create!(
  content: [ 'MUITO RUIM'
    'RUIM',
    'NEM RUIM',
    'NEM BOM',
    'BOM',
    'MUITO BOM'
  ]
  question: [ whoqol_15 ]
)

# 16/25
# MUITO INSATISFEITO
# INSATISFEITO
# NEM SATISFEITO NEM INSATISFEITO
# SATISFEITO
# MUITO SATISFEITO

Answer.create!(
  content: [
    'MUITO INSATISFEITO',
    'INSATISFEITO',
    'NEM SATISFEITO NEM INSATISFEITO',
    'SATISFEITO',
    'MUITO SATISFEITO'
  ]
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
)

Answer.create!(
  content: ['MUITO INSATISFEITO']
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
)
Answer.create!(
  content: ['INSATISFEITO']
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
)
Answer.create!(
  content: ['NEM SATISFEITO NEM INSATISFEITO']
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
)
Answer.create!(
  content: ['SATISFEITO']
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
Answer.create!(
  content: ['MUITO SATISFEITO']
  question: [
    whoqol_16,
    whoqol_17,
    whoqol_18,
    whoqol_19,
    whoqol_20,
    whoqol_21,
    whoqol_22,
    whoqol_23,
    whoqol_24,
    whoqol_25,
  ]
)

# 26
# NUNCA
# ALGUMAS VEZES
# FREQUENTEMENTE
# MUITO FREQUENTEMENTE
# SEMPRE

Answer.create!(
  content: [
    'NUNCA',
    'ALGUMAS VEZES',
    'FREQUENTEMENTE',
    'MUITO FREQUENTEMENTE',
    'SEMPRE'
  ]
  question: [ whoqol_26 ]
)

Answer.create!(
  content: ['NUNCA']
  question: [ whoqol_26 ]
)
Answer.create!(
  content: ['ALGUMAS VEZES']
  question: [ whoqol_26 ]
)
Answer.create!(
  content: ['FREQUENTEMENTE']
  question: [ whoqol_26 ]
)
Answer.create!(
  content: ['MUITO FREQUENTEMENTE']
  question: [ whoqol_26 ]
)
Answer.create!(
  content: ['SEMPRE']
  question: [ whoqol_26 ]
)
