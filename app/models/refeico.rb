class Refeico < ApplicationRecord
  validates :refeicao, presence: { message: "não é permitido campo vazio" }
  validates :data, presence: { message: "não é permitido campo vazio" }

end
