require "csv"

namespace :csv do
  desc "Importa o arquivo conferencia.csv"
  task import: :environment do
    @items = []
    CSV.foreach("tmp/conferencia.csv", col_sep: ";", headers: true) do |linha|
      @items << linha.to_h
    end

    @items.uniq!

    Conference.transaction do
      Conference.create(@items)
    end
    puts "Importe concluído!"
  end
end
