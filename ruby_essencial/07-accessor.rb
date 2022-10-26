class Pessoa
    attr_accessor :nome
    
    def falar
        "Olá, pessoal"
    end
end

p1 = Pessoa.new
p1.nome = "Fernanda"
p1.nome = "Joao"
p1.nome = "José"
puts p1.nome