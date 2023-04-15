# This function will create backup files with extention .bak
function backup --argument filename
    cp $filename $filename.bak
end
