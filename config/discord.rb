require_all 'app/discord/**/*.rb'

$bot = Discordrb::Commands::CommandBot.new(
  token:       configatron.discord.token,
  client_id:   configatron.discord.client_id,
  prefix:      configatron.discord.bot_prefix,
  ignore_bots: true
)

# Load all discord containers.
Dir['./app/discord/**/*.rb'].each do |file|
  container = file.gsub("./app/","").gsub(".rb","").camelize
  $bot.include! container.constantize
end
