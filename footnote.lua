
function Note(el)
  stringify = pandoc.utils.stringify
  if #el.content == 1 then
    local ft = stringify(el.content[1]) 
    if string.sub(ft,1,4) == "fig:" then
        local fn = string.sub(ft,5)
        local f = io.open("figures/" .. fn .. ".md", 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local title=pandoc.utils.stringify(doc.meta.title) or "Title has not been set"
        return pandoc.Note("*@" .. ft .. " " .. title)
    end
  end
end

