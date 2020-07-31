command! -bar -nargs=* -complete=file -range=% -bang W
  \ <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Write
  \ <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Wq
  \ <line1>,<line2>write<bang> <args> | :Sayonara
command! -bar -nargs=* -complete=file -range=% -bang WQ
  \ <line1>,<line2>write<bang> <args> | :Sayonara

command! -bar -bang Wqall wqall<bang>
command! -bar -bang WQall wqall<bang>

command! -bar Q :Sayonara
command! -bar Quit :Sayonara
command! -bar -bang Qall qall<bang>
