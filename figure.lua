function Image(img)
      if img.classes:find('figure',1) then
        local f = io.open(img.src, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        local title=pandoc.utils.stringify(doc.meta.title) or "Title has not been set"
        local src=pandoc.utils.stringify(doc.meta.image_url) or "src has not been set"
        local caption=pandoc.utils.stringify(doc.meta.caption) or "caption has not been set"
        return pandoc.Image(caption,src,title) 
      end
end

