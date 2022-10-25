class PessoaFisica

    def initialize
        puts "inicializando..."
    end

    def falar(nome = "Pessoal")
        "olá, #{nome}"
    end    
end

p = PessoaFisica.new

puts p.falar
puts p.falar("Fernanda")