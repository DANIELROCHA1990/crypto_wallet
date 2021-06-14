namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Loading....")
      spinner.auto_spin # Automatic animation with default interval
      %x(rails db:drop:_unsafe)
      %x(rails db:create)
      %x(rails db:migrate)
      %x(rails dev:mining_types)
      %x(rails dev:add_coins)
      spinner.success("(Done!)")
    else
      puts "Você não está no ambiente de desenvolvimento!s"
    end
  end

  desc 'Cadastrando as moedas'
  task add_coins: :environment do
      coins = [
                {
                  description: "Bitcoin", 
                  acronym: "BTC",
                  url_image: "https://clipartart.com/images/bitcooin-clipart-8.png",
                  mining_type: MiningType.find_by(acronym: 'POW')
                },
                {
                  description: "Ethereum", 
                  acronym: "ETH",
                  url_image: "https://www.digitalhot.com.br/wp-content/uploads/2017/07/O-que-e-ethereum.png",
                  mining_type: MiningType.all.sample
                },
                {
                  description: "Dash", 
                  acronym: "DSH",
                  url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
                  mining_type: MiningType.all.sample
                },
                {
                  description: "Ripple", 
                  acronym: "XRP",
                  url_image: "https://png.pngitem.com/pimgs/s/26-268780_ripple-xrp-icon-hd-png-download.png",
                  mining_type: MiningType.all.sample
                },
                {
                  description: "Dogecoin", 
                  acronym: "DOGE",
                  url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/74.png",
                  mining_type: MiningType.all.sample
                }
              ]
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
  end

  desc 'Cadastrando tipos de mineração '
  task mining_types: :environment do
    mining_types = [
      {description: 'Proof Of Work', acronym: 'POW'},
      {description: 'Proof Of Stake', acronym: 'POS'},
      {description: 'Proof Of Capacity', acronym: 'POC'}
    ]

    mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
    end
  end
end
