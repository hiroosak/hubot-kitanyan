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

  robot.hear /.*/, (res) ->
    if !/^@kitanyan/.test(res.message.text) && 0.1 <= Math.random()
      return

    messages = [
      ":kitanyan: 「よんだ？」",
      ":kitanyan: 「話は聞かせてもらった。ぜんぶワイに任しぃ」",
      ":kitanyan: 「せやな」",
      ":kitanyan: 「それな」",
      ":kitanyan: 「あるわー」",
      ":kitanyan: 「ないわー」",
      ":kitanyan: 「そんなときもあるよね」",
      ":kitanyan: 「うんうん」",
      ":kitanyan: 「ですよねえ」",
      ":kitanyan: 「間違いじゃないんですけどねえ」",
      ":kitanyan: 「それあかんパティーンや」",
    ]

    res.send res.random messages

  robot.hear /.*(メタップス).*/, (res) ->
    messages = [
      ":kitanyan: 「メタップス細胞な」",
      ":kitanyan: 「メタップス細胞だろ」",
      ":kitanyan: 「メタップス細胞がどうしました？」",
      ":kitanyan: 「メタップス細胞はありますか？」",
      ":kitanyan: 「ちがうちがう、メタップス細胞や」",
    ]

    res.send res.random messages

