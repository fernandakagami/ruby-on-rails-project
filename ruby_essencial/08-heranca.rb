class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(nome)
        "Olá, #{nome}."
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj

    def pagar_fornecedor
        "Pagando fornecedor..."
    end
end

p1 = Pessoa.new
puts p1.nome = "Fernanda"
puts p1.email = "email@email.com"

p2 = PessoaFisica.new
puts p2.nome = "Joao"
puts p2.email = "joao@joao.com"
puts p2.cpf = "91919191-91"
puts p2.falar("Hello")


