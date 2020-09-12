if !exists('g:Lf_Extensions')
	let g:Lf_Extensions = {}
endif

let g:Lf_Extensions.jumps = {
			\ 'source': 'leaderf#jumps#source',
			\ 'accept': 'leaderf#jumps#accept',
			\ 'bang_enter': 'leaderf#jumps#bang_enter',
			\ 'highlights_def': {
			\ 'Lf_hl_jumpsTitle': '^[^> \t].*',
			\ 'Lf_hl_jumpsText': '.\{-}\d\+\s\+\d\+\s\+\d\+\s\+\zs.*',
			\ },
			\ 'highlights_cmd': [
			\ 'hi link Lf_hl_jumpsTitle Title',
			\ 'hi link Lf_hl_jumpsText Directory',
			\ ],
			\ }

