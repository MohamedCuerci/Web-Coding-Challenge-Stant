require "csv"

namespace :csv do
  desc "Importa o arquivo conferencia.csv"
  task import: :environment do
    CSV.foreach("tmp/conferencia.csv", col_sep: ",").with_index do |linha, indice|
      Conference.create!(title: linha[0], time: linha[1])
    end
  end

end
