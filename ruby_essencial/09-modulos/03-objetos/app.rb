require_relative 'pagamento'

include Pagamento

p = Visa.new
puts p.pagando
