" Vim syntax file for Bullet Journal (bujo)
" Based on bujo.nanorc by nicholai.best@gmail.com
"
" Overview:
"   Rules are defined in the same order as bujo.nanorc.
"   Rules defined later have higher priority, same as in nano.

if exists("b:current_syntax")
  finish
endif

" ---------------------------------------------------------------------------
" Meeting
" ---------------------------------------------------------------------------
" Listed first so tasks can be placed inside and colored correctly.

" 1. M and the first word in red (error indicator if no date)
syn match bujoMeetingError "^M \S\+" contains=bujoMeetingMarkerC

" 2. Valid date format turns green
syn match bujoMeetingDate "^M\s*\d\d-\d\d-\d\d\d\d\s*\d\d\d\d" contains=bujoMeetingMarkerC

" 3. 'M' in bright green regardless
syn match bujoMeetingMarker "^M\>"
syn match bujoMeetingMarkerC "^M\>" contained

" ---------------------------------------------------------------------------
" Tasks
" ---------------------------------------------------------------------------

" Important task
syn match bujoImportant "! .*"

" Normal task
syn match bujoTask "^\* "
syn match bujoTaskInline " \* "

" Low priority task
syn match bujoLowPriority "\*l"

" Explore
syn match bujoExplore "^\? .*$"

" ---------------------------------------------------------------------------
" Email and Contacts
" ---------------------------------------------------------------------------

" Email to be replied to (@ at start of line)
syn match bujoEmail "^@"

" Highlight a contact (@Name)
syn match bujoContact "@[[:alpha:]]*\>"

" Highlight an email address
syn match bujoEmailAddress "\<[[:alnum:]-]*@[[:alnum:].\-]*\>"

" ---------------------------------------------------------------------------
" Migration
" ---------------------------------------------------------------------------

" Migrated forward (>> and content)
syn match bujoMigratedContent ">>.*" contains=bujoMigratedMarker
syn match bujoMigratedMarker ">>" contained

" ---------------------------------------------------------------------------
" Scheduling forward (>>>)
" ---------------------------------------------------------------------------

syn match bujoScheduledContent ">>>.*$" contains=bujoScheduledMarker,bujoScheduledDate
syn match bujoScheduledMarker "^>>>" contained
syn match bujoScheduledDate "^>>>\d\d-\d\d-\d\d\d\d>>>" contained

" ---------------------------------------------------------------------------
" Delegated (<<)
" ---------------------------------------------------------------------------

syn match bujoDelegatedContent "<<.*$" contains=bujoDelegateHighlight
syn match bujoDelegateHighlight "^<<.*<<" contained

" ---------------------------------------------------------------------------
" Completed and cancelled tasks
" ---------------------------------------------------------------------------

syn match bujoCompleted "^[xX].*$"
syn match bujoCompletedInline "\<[xX] .*$"
syn match bujoCancelledContent "CX.*$" contains=bujoCancelledMarker
syn match bujoCancelledMarker "CX" contained

" ---------------------------------------------------------------------------
" Dates
" ---------------------------------------------------------------------------

syn region bujoDate start="===" end="===" oneline

" ---------------------------------------------------------------------------
" Comments
" ---------------------------------------------------------------------------

syn match bujoComment "\(^\|\s\+\)#.*$"

" ---------------------------------------------------------------------------
" String (not frequently used, saved as example)
" ---------------------------------------------------------------------------

syn match bujoString /".\+"\(\s\|$\)/

" ===========================================================================
" Highlight definitions (colors)
" Mapping: nano -> vim
"   black       -> Black         brightblack -> DarkGray
"   red         -> DarkRed       brightred   -> Red
"   green       -> DarkGreen     brightgreen -> Green
"   brightyellow -> Yellow
"   magenta     -> DarkMagenta   brightmagenta -> Magenta
"   cyan        -> DarkCyan
"   white       -> White
" ===========================================================================

" Meeting
hi def bujoMeetingError    ctermfg=DarkRed    guifg=DarkRed
hi def bujoMeetingDate     ctermfg=DarkGreen  guifg=DarkGreen
hi def bujoMeetingMarker   ctermfg=Green      guifg=LightGreen
hi def bujoMeetingMarkerC  ctermfg=Green      guifg=LightGreen

" Tasks
hi def bujoImportant       ctermfg=Yellow     guifg=Yellow
hi def bujoTask            ctermfg=Red        guifg=LightRed
hi def bujoTaskInline      ctermfg=Red        guifg=LightRed
hi def bujoLowPriority     ctermfg=DarkMagenta guifg=DarkMagenta
hi def bujoExplore         ctermfg=DarkCyan   guifg=DarkCyan

" Email and Contacts
hi def bujoEmail           ctermfg=DarkGreen  guifg=DarkGreen
hi def bujoContact         ctermfg=DarkMagenta guifg=DarkMagenta
hi def bujoEmailAddress    ctermfg=Magenta    guifg=Magenta

" Migration
hi def bujoMigratedContent ctermfg=Black      guifg=Black
hi def bujoMigratedMarker  ctermfg=DarkGray   guifg=DarkGray

" Scheduling
hi def bujoScheduledContent ctermfg=DarkGray  guifg=DarkGray
hi def bujoScheduledMarker  ctermfg=DarkRed   guifg=DarkRed
hi def bujoScheduledDate    ctermfg=DarkGreen guifg=DarkGreen

" Delegated
hi def bujoDelegatedContent ctermfg=DarkGray  guifg=DarkGray
hi def bujoDelegateHighlight ctermfg=DarkCyan guifg=DarkCyan

" Completed and Cancelled
hi def bujoCompleted       ctermfg=DarkGray   guifg=DarkGray
hi def bujoCompletedInline ctermfg=DarkGray   guifg=DarkGray
hi def bujoCancelledContent ctermfg=Black     guifg=Black
hi def bujoCancelledMarker  ctermfg=DarkGray  guifg=DarkGray

" Dates
hi def bujoDate            ctermfg=Green      guifg=LightGreen

" Comments
hi def bujoComment         ctermfg=DarkGray   guifg=DarkGray

" Strings
hi def bujoString          ctermfg=White      guifg=White

let b:current_syntax = "bujo"
