function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function Image(img)
    local classes = img.attr.classes
    local fn = img.attributes.include
    if file_exists(fn) and classes:includes 'kallipos' then
       local fh = io.open(fn)
       local metadata = pandoc.read(fh:read('*a')).meta
       fh:close()
       return pandoc.Image(pandoc.utils.stringify(metadata.caption), pandoc.utils.stringify(metadata.image_url))
    end
end


