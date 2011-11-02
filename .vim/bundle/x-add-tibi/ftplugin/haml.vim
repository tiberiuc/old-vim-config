
if exists("t:did_ftplugin")
  finish
endif

let t:did_ftplugin = 1

" Compile some HAML.
command! -range=% Haml <line1>,<line2>:w !haml 

" Compile the current HAML file on write.
if exists("haml_convert_on_save")
  autocmd BufWritePost,FileWritePost *.haml !haml "<afile>" "$(echo "test.haml" | sed 's/\.[^\.]*$//').html"&
endif
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab