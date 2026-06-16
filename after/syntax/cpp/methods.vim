" return gets its own color separate from other cStatement keywords
syntax keyword cReturnKeyword return

" Highlight method calls after -> as cCustomMethod
syntax match cCustomMethod /\->\zs\w\+\ze\s*(/
" Highlight member access after -> (not followed by '(') as cCustomMember
syntax match cCustomMember /\->\zs\w\+\ze\(\s*(\)\@!/
