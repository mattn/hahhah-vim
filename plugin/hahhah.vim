scriptencoding utf-8

if !has('unix') || $VTE_CJK_WIDTH != ''
  let s:hahhahstr = [
  \ '(´д｀;)',
  \ '( ´д`;)',
  \ '(  ´д`)',
  \ '(　 ´д)',
  \ '(　　 ´)',
  \ '( 　　  )',
  \ '(　　　 )',
  \ '(; 　　 )',
  \ '( ;　　 )',
  \ '(` ;　　)',
  \ '(д` ;　)']
  let s:hahhaherr = [
  \ '　　　ｪ(´д｀)ｪ　　　', 
  \ '　　ェｪ(´д｀)ｪェ　　', 
  \ '　エェｪ(´д｀)ｪェエ　', 
  \ '工エェｪ(´д｀)ｪェエ工']
else
  let s:hahhahstr = [
  \ '(´ д ｀; )',
  \ '( ´ д `;)',
  \ '(  ´ д `)',
  \ '(   ´ д )',
  \ '( 　　´ )',
  \ '( 　　  )',
  \ '(　　　 )',
  \ '(; 　　 )',
  \ '( ;　　 )',
  \ '(` ;　　)',
  \ '(д `;　 )']
  let s:hahhaherr = [
  \ '　　　ｪ(´ д ｀)ｪ　　　', 
  \ '　　ェｪ(´ д ｀)ｪェ　　', 
  \ '　エェｪ(´ д ｀)ｪェエ　', 
  \ '工エェｪ(´ д ｀)ｪェエ工']
endif

function! g:HahHah()
  let hahhahpos = get(w:, "hahhahpos", -1) + 1
  if len(v:errmsg) && hahhahpos >= 0
    let hahhahpos = -24
    let v:errmsg = ''
  endif
  if hahhahpos >= 0
    let hahhahpos = hahhahpos % len(s:hahhahstr)
  endif
  let w:['hahhahpos'] = hahhahpos
  if hahhahpos >= 0
    return s:hahhahstr[hahhahpos].' ﾊｧﾊｧ'
  else
    return s:hahhaherr[(hahhahpos+24) % len(s:hahhaherr)]
  endif
endfunction
