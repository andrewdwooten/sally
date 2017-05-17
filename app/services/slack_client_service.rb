require 'slack'
class SlackClientService

  def initialize
    @client = Slack::Client.new(token: ENV['bot_access_token'])
  end

  def post_job_info(salary)
    @client.chat_postMessage(channel: "#salaries_slack_bot", text: "A Turing alum just posted a new job making #{salary}.", icon_emoji: ":monkey_face:")
    
  end
end
