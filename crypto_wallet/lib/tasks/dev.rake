namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?         
      puts  %x(rails db:drop:_unsafe db:create db:migrate dev:add_mining_types dev:add_coins)      
    else
      puts "Você não está em ambiente de desenvolvimento."
    end
  end

  desc "Cadastro das moedas"
  task add_coins: :environment do
    coins = [
      {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://static.vecteezy.com/system/resources/previews/008/505/801/original/bitcoin-logo-color-illustration-png.png",
          mining_type: MiningType.find_by(acronym: 'PoW')
      },    
      {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpr0Lw2Km6vMV7WX2kr4kXttvh4Rgd2RXkZQ&usqp=CAU",
          mining_type: MiningType.all.sample
      },
      {   
          description: "Dash",
          acronym: "DASH",
          url_image: "https://media.dash.org/wp-content/uploads/dash-d.png",
          mining_type: MiningType.all.sample
      },
      {   
          description: "Iota",
          acronym: "IOT",
          url_image: "https://cryptologos.cc/logos/iota-miota-logo.png",
          mining_type: MiningType.all.sample
      },
      {   
          description: "ZCash",
          acronym: "ZEC",
          url_image: "data:image/png;base64,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",
          mining_type: MiningType.all.sample
      }
    ]

    coins.each do |coin|
       Coin.find_or_create_by!(coin)
    end
  end

  desc "Cadastro dos tipos de mineração"
  task add_mining_types: :environment do
    mining_types = [
      {description: "Proof of Work", acronym: "PoW"},
      {description: "Proof of Stake", acronym: "PoS"},
      {description: "Proof of Capacity", acronym: "PoC"}
    ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
   end
  end

end
