puts "Olá Curso de Rails"

puts "Digite seu nome:"
nome = gets
puts "O seu nome é " + nome

puts nome.inspect


puts "===================="

puts "Digite seu sobrenome:"
sobrenome = gets.chomp

puts sobrenome.inspect


puts "===================="

puts "Digite seu salário:"
salario = gets.chomp.to_f

puts "Seu salário atualizado é " + (salario * 1.10).to_s