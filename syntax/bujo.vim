" Arquivo de sintaxe Vim para Bullet Journal (bujo)
" Baseado em bujo.nanorc por nicholai.best@gmail.com
"
" Visão geral:
"   As regras são definidas na mesma ordem do bujo.nanorc.
"   Regras definidas posteriormente têm prioridade maior, assim como no nano.

if exists("b:current_syntax")
  finish
endif

" ---------------------------------------------------------------------------
" Reunião (Meeting)
" ---------------------------------------------------------------------------
" Listada primeiro para que as tarefas possam ser colocadas nelas e sejam
" 'coloridas' corretamente.

" 1. M e a primeira palavra em vermelho (indicador de erro se não houver data)
syn match bujoMeetingError "^M \S\+" contains=bujoMeetingMarkerC

" 2. Formato de data válido torna-se verde
syn match bujoMeetingDate "^M\s*\d\d-\d\d-\d\d\d\d\s*\d\d\d\d" contains=bujoMeetingMarkerC

" 3. O 'M' em verde claro independentemente
syn match bujoMeetingMarker "^M\>"
syn match bujoMeetingMarkerC "^M\>" contained

" ---------------------------------------------------------------------------
" Tarefas
" ---------------------------------------------------------------------------

" Tarefa importante
syn match bujoImportant "! .*"

" Tarefa normal
syn match bujoTask "^\* "
syn match bujoTaskInline " \* "

" Tarefa de baixa prioridade
syn match bujoLowPriority "\*l"

" Explorar
syn match bujoExplore "^\? .*$"

" ---------------------------------------------------------------------------
" Email e Contatos
" ---------------------------------------------------------------------------

" Email a ser respondido (@ no início da linha)
syn match bujoEmail "^@"

" Destaca um contato (@Nome)
syn match bujoContact "@[[:alpha:]]*\>"

" Destaca um endereço de email
syn match bujoEmailAddress "\<[[:alnum:]-]*@[[:alnum:].\-]*\>"

" ---------------------------------------------------------------------------
" Migração
" ---------------------------------------------------------------------------

" Migrado para frente (>> e conteúdo)
syn match bujoMigratedContent ">>.*" contains=bujoMigratedMarker
syn match bujoMigratedMarker ">>" contained

" ---------------------------------------------------------------------------
" Encaminhamento de agendamento (>>>)
" ---------------------------------------------------------------------------

syn match bujoScheduledContent ">>>.*$" contains=bujoScheduledMarker,bujoScheduledDate
syn match bujoScheduledMarker "^>>>" contained
syn match bujoScheduledDate "^>>>\d\d-\d\d-\d\d\d\d>>>" contained

" ---------------------------------------------------------------------------
" Delegado (<<)
" ---------------------------------------------------------------------------

syn match bujoDelegatedContent "<<.*$" contains=bujoDelegateHighlight
syn match bujoDelegateHighlight "^<<.*<<" contained

" ---------------------------------------------------------------------------
" Tarefas completadas e canceladas
" ---------------------------------------------------------------------------

syn match bujoCompleted "^[xX].*$"
syn match bujoCompletedInline "\<[xX] .*$"
syn match bujoCancelledContent "CX.*$" contains=bujoCancelledMarker
syn match bujoCancelledMarker "CX" contained

" ---------------------------------------------------------------------------
" Datas
" ---------------------------------------------------------------------------

syn region bujoDate start="===" end="===" oneline

" ---------------------------------------------------------------------------
" Comentários
" ---------------------------------------------------------------------------

syn match bujoComment "\(^\|\s\+\)#.*$"

" ---------------------------------------------------------------------------
" String (não utilizado frequentemente, salvo para exemplo)
" ---------------------------------------------------------------------------

syn match bujoString /".\+"\(\s\|$\)/

" ===========================================================================
" Definições de destaque (cores)
" Mapeamento: nano -> vim
"   black       -> Black         brightblack -> DarkGray
"   red         -> DarkRed       brightred   -> Red
"   green       -> DarkGreen     brightgreen -> Green
"   brightyellow -> Yellow
"   magenta     -> DarkMagenta   brightmagenta -> Magenta
"   cyan        -> DarkCyan
"   white       -> White
" ===========================================================================

" Reunião
hi def bujoMeetingError    ctermfg=DarkRed    guifg=DarkRed
hi def bujoMeetingDate     ctermfg=DarkGreen  guifg=DarkGreen
hi def bujoMeetingMarker   ctermfg=Green      guifg=LightGreen
hi def bujoMeetingMarkerC  ctermfg=Green      guifg=LightGreen

" Tarefas
hi def bujoImportant       ctermfg=Yellow     guifg=Yellow
hi def bujoTask            ctermfg=Red        guifg=LightRed
hi def bujoTaskInline      ctermfg=Red        guifg=LightRed
hi def bujoLowPriority     ctermfg=DarkMagenta guifg=DarkMagenta
hi def bujoExplore         ctermfg=DarkCyan   guifg=DarkCyan

" Email e Contatos
hi def bujoEmail           ctermfg=DarkGreen  guifg=DarkGreen
hi def bujoContact         ctermfg=DarkMagenta guifg=DarkMagenta
hi def bujoEmailAddress    ctermfg=Magenta    guifg=Magenta

" Migração
hi def bujoMigratedContent ctermfg=Black      guifg=Black
hi def bujoMigratedMarker  ctermfg=DarkGray   guifg=DarkGray

" Agendamento
hi def bujoScheduledContent ctermfg=DarkGray  guifg=DarkGray
hi def bujoScheduledMarker  ctermfg=DarkRed   guifg=DarkRed
hi def bujoScheduledDate    ctermfg=DarkGreen guifg=DarkGreen

" Delegado
hi def bujoDelegatedContent ctermfg=DarkGray  guifg=DarkGray
hi def bujoDelegateHighlight ctermfg=DarkCyan guifg=DarkCyan

" Completadas e Canceladas
hi def bujoCompleted       ctermfg=DarkGray   guifg=DarkGray
hi def bujoCompletedInline ctermfg=DarkGray   guifg=DarkGray
hi def bujoCancelledContent ctermfg=Black     guifg=Black
hi def bujoCancelledMarker  ctermfg=DarkGray  guifg=DarkGray

" Datas
hi def bujoDate            ctermfg=Green      guifg=LightGreen

" Comentários
hi def bujoComment         ctermfg=DarkGray   guifg=DarkGray

" Strings
hi def bujoString          ctermfg=White      guifg=White

let b:current_syntax = "bujo"
