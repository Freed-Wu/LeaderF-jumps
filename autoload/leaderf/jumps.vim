function! leaderf#jumps#source(args) abort "{{{
	let l:jumps = split(execute('jumps'), "\n")
	return get(g:, 'leaderf#jumps#title_enable') ? l:jumps[:] : l:jumps[1:]
endfunction "}}}

function! leaderf#jumps#accept(line, args) abort "{{{
	if a:line !~# '^[> \t]'
		return
	endif
	let l:line_num = matchstr(a:line, '^.\{-}\d\+\s\+\zs\d\+')
	if empty(l:line_num)
		return
	endif
	let l:col_num = matchstr(a:line, '^.\{-}\d\+\s\+\d\+\s\+\zs\d\+')
	call cursor(l:line_num, l:col_num)
endfunction "}}}

function! leaderf#jumps#bang_enter(orig_buf_nr, orig_cursor, args) abort "{{{
	call search('^>')
	redraw
endfunction "}}}
