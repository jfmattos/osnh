# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Survey.destroy_all
Question.destroy_all

# =======
# SURVEYS
# =======

whoqol = Survey.create!(
  title: "WHO: Quality of Life (WHOQOL)",
  interval_days: [90, 90, 180]
)

whodas = Survey.create!(
  title: "WHO: Disability Assesment Schedule 2.0 (WHODAS)",
  interval_days: [90, 90, 180]
)

sf36 = Survey.create!(
  title: "SF-36",
  interval_days: [90, 90, 180]
)

# =========
# QUESTIONS
# =========

# require_relative "seeds_sf36"
# require_relative "seeds_whodas"
require_relative "seeds_whoqol"

# =======
# ANSWERS
# =======

Answer.create!(
  content: ,
  question: whoqol_01
)

# 1/2
# MUITO RUIM
# RUIM
# NEM RUIM NEM BOA
# BOA
# MUITO BOA

# 3/9
# NADA
# MUITO POUCO
# MAIS OU MENOS
# BASTANTE
# EXTREMAMENTE

# 10/14
# NADA
# MUITO POUCO
# MÉDIO
# MUITO
# COMPLETAMENTE

# 15
# MUITO RUIM
# RUIM
# NEM RUIM
# NEM BOM
# BOM
# MUITO BOM

# 16/25
# MUITO INSATISFEITO
# INSATISFEITO
# NEM SATISFEITO NEM INSATISFEITO
# SATISFEITO
# MUITO SATISFEITO

# 26
# MUITO INSATISFEITO
# INSATISFEITO
# NEM SATISFEITO NEM INSATISFEITO
# SATISFEITO
# MUITO SATISFEITO
