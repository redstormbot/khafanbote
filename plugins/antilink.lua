local function run(msg)
    if not is_momod(msg) then
        chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 'No links ... Kick Spammer'
    end
end

return {patterns = {
    "https://telegram.me/joinchat/",
    "http://telegram.me/joinchat/",
    }, run = run}
