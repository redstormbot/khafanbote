do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = our_id -- your bot id
   -- like local bot_id = 1234567
    if matches[1] == 'adios' and is_admin(msg) then
        send_large_msg("chat#id"..msg.to.id, 'Hasta luego.', ok_cb, false)
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       send_large_msg("chat#id"..msg.to.id, 'Este no es mi grupo ... Adios.', ok_cb, false)
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^[!/](adios)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
