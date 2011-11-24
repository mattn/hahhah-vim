scriptencoding utf-8

if !has('unix') || $VTE_CJK_WIDTH != ''
  let s:hahhahstr = ["(´д｀;)", "( ´д`;)", "(  ´д`)", "(　 ´д)", "(　　 ´)", "( 　　  )", "(　　　 )", "(; 　　 )", "( ;　　 )", "(` ;　　)", "(д` ;　)"]
else
  let s:hahhahstr = ["(´ д ｀; )", "( ´ д `;)", "(  ´ д `)", "(   ´ д )", "( 　　´ )", "( 　　  )", "(　　　 )", "(; 　　 )", "( ;　　 )", "(` ;　　)", "(д `;　 )"]
endif
let s:hahhaherr =  '工エェｪ(´д｀)ｪェエ工'

function! g:HahHah()
  let hahhahpos = get(w:, "hahhahpos", -1) + 1
  if len(v:errmsg) && hahhahpos >= 0
    let hahhahpos = -10
	let g:err = v:errmsg
    let v:errmsg = ''
  endif
  let hahhahpos = hahhahpos % len(s:hahhahstr)
  let w:['hahhahpos'] = hahhahpos
  if hahhahpos >= 0
    return s:hahhahstr[hahhahpos].' ﾊｧﾊｧ'
  else
    return s:hahhaherr
  endif
endfunction
