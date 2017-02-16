scriptencoding utf-8
" Base2Tone_EveningDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#base2tone_eveningdark#palette = {}

let s:N1   = [ '#fbfaf9' , '#4f3598' , 237    , 245   ]
let s:N2   = [ '#fbfaf9' , '#4f3598' , 231    , 240   ]
let s:N3   = [ '#fbfaf9' , '#545167' , 223    , 237   ]
let g:airline#themes#base2tone_eveningdark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#base2tone_eveningdark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#fbfaf9' , '#7eaefd' , 237    , 223   ]
let s:I2 = [ '#fbfaf9' , '#7eaefd' , 231    , 62    ]
let s:I3 = [ '#ffcc99' , '#545167' , 223    , 237   ]
let g:airline#themes#base2tone_eveningdark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#base2tone_eveningdark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#base2tone_eveningdark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#b37537' , s:I1[2] , 178   , ''     ] ,
      \ }

let g:airline#themes#base2tone_eveningdark#palette.replace = copy(g:airline#themes#base2tone_eveningdark#palette.insert)
let g:airline#themes#base2tone_eveningdark#palette.replace.airline_a = [ s:I2[0]   , '#6a51e6' , s:I2[2] , 62    , ''     ]
let g:airline#themes#base2tone_eveningdark#palette.replace_modified = g:airline#themes#base2tone_eveningdark#palette.insert_modified

let s:V1 = [ '#fbfaf9' , '#e6987a' , 237    , 147   ]
let s:V2 = [ '#fbfaf9' , '#e6987a' , 231    , 62    ]
let s:V3 = [ '#fbfaf9' , '#545167' , 231    , 237   ]
let g:airline#themes#base2tone_eveningdark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#base2tone_eveningdark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#545167' , '#545167' , 240    , 237   , '' ]
let s:IA2 = [ '#545167' , '#545167' , 240    , 237   , '' ]
let s:IA3 = [ '#545167' , '#545167' , 240    , 237   , '' ]
let g:airline#themes#base2tone_eveningdark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#base2tone_eveningdark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#base2tone_eveningdark#palette.accents = {
      \ 'red': [ '#6a51e6' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base2tone_eveningdark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#eeebff' , '#6a51e6' , 195    , 62    , ''     ],
      \ [ '#fbfaf9' , '#7a63ee' , 231    , 63    , ''     ],
      \ [ '#6a51e6' , '#fbfaf9' , 62     , 231   , 'bold' ])

