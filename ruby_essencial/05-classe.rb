class PessoaFisica

    def initialize
        puts "inicializando..."
    end

    def falar(nome = "Pessoal")
        "olá, #{nome}"
    end

    def meu_id
        "Meu id é o #{self.object_id}"
    end
end

p1 = PessoaFisica.new

puts p1.falar
puts p1.falar("Fernanda")
puts p1.meu_id

p2 = PessoaFisica.new

puts p2.meu_id