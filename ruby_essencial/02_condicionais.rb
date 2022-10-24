# if

print 'Digite um número: '
x = gets.chomp.to_i

if x > 2
    puts 'x é maior que 2'

elsif x == 2
    puts 'x é igual a 2'

else
    puts 'x é menor que 2'

end


# unless / a menos que

print 'Digite um número: '
x = gets.chomp.to_i

unless x >= 2
    puts 'x é menor que 2'

else
    puts 'x é maior que 2'

end


# case

print 'Digite sua idade: '
idade = gets.chomp.to_i

case idade
when 0 .. 2
    puts 'bebê'
when 3 .. 12
    puts 'criança'
when 13 .. 18
    puts 'adolescente'
else
    puts 'adulto'
end

# ternária

tempo = 'sol'

tempo == 'sol' ? (puts 'praia') : (puts 'casa')







