# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.brain.data.dialogue = {}

  robot.hear /.*/, (msg) ->
    if 0.1 <= Math.random()
      return

    messages = [
      ":kitanyan: 「よんだ？」",
      ":kitanyan: 「話は聞かせてもらった。ぜんぶワイに任しぃ」",
      ":kitanyan: 「せやな」",
      ":kitanyan: 「それな」",
      ":kitanyan: 「あるわー」",
      ":kitanyan: 「それあかんパティーンや」",
    ]

    msg.reply msg.random messages
