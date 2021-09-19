app: lyx 
-

#Play around with delays to make them as low as possible, mostly needed for filling matrices
settings():
    key_wait = 2
    insert_wait = 14
#tag(): user.line_commands}

{user.tex_symbols}:
    key(\)
    insert(tex_symbols)
    key(space)
greek {user.tex_greek_letters}:
    key(\)
    insert(tex_greek_letters)
    key(space)
<number> {user.mathfly_fractions}:
	key(ctrl-m f)
	insert(number)
	key(down)
    insert(mathfly_fractions)
    key(right)
#anything that breaks down into cases like absolute value functions
# Add matrix row to add more cases
cases: "\cases "
# Any sequence of letters that needs to be formatted normally in math mode, e.g. log
operator <user.letters>:
    insert("\\text ")
    sleep(10ms)
    user.insert_formatted(letters, "alldown")
    edit.right()
#enable sentence formatter in formatters.py dictionary for this to work
#A sequence of letters that needs to be formatted normally with the first letter capital, e.g. Log
capital operator <user.letters>:
    insert('\\text ')
    sleep(10ms)
    user.insert_formatted(letters, "sentence")

#matrices are surrounded by square brackets
#some edge cases
matrix one by <number>:
    key("ctrl-m [")
    insert('\\array ')
    key("ctrl-m c i")
    repeat(number-2)

matrix <number> by one:
    key("ctrl-m [")
    insert('\\array ')
    key("ctrl-m w i")
    repeat(number-2)

matrix <number> by <number>:
    key("ctrl-m [")
 	insert("\\array ")
 	key("ctrl-m w i")
 	repeat(number_1-2)
 	key("ctrl-m c i")
     repeat(number_2-2)

#commands to add lines in matrices     
line above:
    key("ctrl-m w a")
line below:
    key("ctrl-m w z")
    
line right:
    key("ctrl-m c z")
line left:
    key("ctrl-m c a")
#matrix surrounded by pipes for cross product
cross <number> by <number>:
    key("ctrl-m |")
 	insert("\\array ")
 	key("ctrl-m w i")
 	repeat(number_1-2)
 	key("ctrl-m c i")
     repeat(number_2-2)
# commands to fill matrices with numbers/symbols, use with repetitions inside of a cell, "fill one third"
dump <number>:
    insert(number)
    key(tab)
fill pipe:
    insert('|')
    key(tab)
#useful for truth tables
pump <number>:
    insert(number)
    key(down)
pump alternating:
    insert('0')
    key(down)
    insert('1')
    key(down)

justify equal:
    insert("\overset =")
    key(up)

implies: 
    insert("\Longrightarrow")
    key(space)

negative: key(-)
point: key(.)
# for decimals. saying "period" is cumbersome
fraction: key(ctrl-m f)
over: key(shift-left ctrl-m f down) 
# 'over' selects "phrase" to left, initiates fraction, selection becomes numerator
(super script | to the power | to the power of): key(^)
sub script: key(_)
squared: key(^ 2 right)
cubed: key(^ 3 right)
inverse: key(^ - 1 right)
(prekris | parens | brackets | parents): key(ctrl-m ()
(brax | square brackets): key(ctrl-m [)
curly [brackets]: key(ctrl-m {)
absolute: key(ctrl-m |)
angles: key(ctrl-m <)
add matrix row: key(ctrl-m w i)
(delete | remove) matrix row: key(ctrl-m w d)
add matrix column: key(ctrl-m c i)
(delete | remove) matrix column: key(ctrl-m c d)

accent tilde: key(ctrl-m &)
accent dot: key(ctrl-m .)
accent double dot : key("ctrl-m \")
accent bar: key(ctrl-m b)
accent vector: key(ctrl-m v)

summation:
	insert("\\stackrelthree ")
    key(down)
    insert("\\sum ")
    key(down)

big union:
    insert('\\stackrelthree ')
    key(down)
    insert('\\bigcup ')
    key(down)
blank product: "\\prod "
product:
	insert("\\stackrelthree ")
    key(down)
    insert("\\prod ")
    key(down)
limit:
	insert("\\underset \\lim ")
	key(down)
label above: "\\overset "
label below: "\\underset "
prime:
	insert("^\\prime ")
	key(right)
degrees:
	insert("^\\circ ")
	key(right)
#
real numbers:
	insert("\\mathbb R")
	key(right)
complex numbers:
	insert("\\mathbb C")
	key(right)
integer numbers:
	insert("\\mathbb Z")
	key(right)
rational numbers:
	insert("\\mathbb Q")
	key(right)
natural numbers:
	insert("\\mathbb N")
    key(right)
finite field:
    insert('\\mathbb F')
    key(right)
Polynomial Space:
    insert('\\mathbb Pf')
    key(right)

#
# Program control
#
new file: key(cmd-n)
new window: key(cmd-shift-n)
open file: key(cmd-o)
save as: key(cmd-shift-s)
math: key(ctrl-m)
display mode: key(cmd-shift-m)
normal mode: key(ctrl-p s)
view PDF: key(cmd-r)
update PDF: key(cmd-shift-r)
#TODO - fix section
#next tab: key(ctrl-pgdown)
#(prior | previous) tab: key(ctrl-pgup)
close tab: key(cmd-w)
#move line up: key(ctrl-up)
#move line down: key(ctrl-down)

#formatting
#TODO - fix below section
insert (in line formula | in line): key(ctrl-i h i)
insert (numbered formula): key(ctrl-i h n)
insert (display formula | display): key(ctrl-i h d)
insert equation array: key(ctrl-i h e)
insert align: key(ctrl-i h a)
insert AMS align at [environment]: key(ctrl-i h t)
insert AMS flalign [environment]: key(ctrl-i h f)
insert (AMS gathered environment | AMS gather): key(ctrl-i h g)
insert (AMS multline [environment]| multiline): key(ctrl-i h m)
insert array [environment]: key(ctrl-i h y)
insert (cases [environment] | piecewise): key(ctrl-i h c)
insert (aligned [environment] | align): key(ctrl-i h l)
insert aligned at [environment]: key(ctrl-i h v)
insert gathered [environment]: key(ctrl-i h h)
insert split [environment]: key(ctrl-i h s)
insert delimiters: key(ctrl-i h r)
insert matrix: key(ctrl-i h x)
insert macro: key(ctrl-i h o)

insert [bulleted] list: key(ctrl-p b)
insert numbered list: key(ctrl-p e)
insert description: key(ctrl-p d)
insert part: key(ctrl-p 0)
insert (section | heading): key(ctrl-p 2)
insert sub (section | heading): key(ctrl-p 3)
insert sub sub (section | heading): key(ctrl-p 4)
insert paragraph: key(ctrl-p 5)
insert sub paragraph: key(ctrl-p 6)
insert title: key(ctrl-p t)
insert author: key(ctrl-p shift-a)
insert date: key(ctrl-p shift-d)
insert abstract: key(ctrl-p a)
insert address: key(ctrl-p ctrl-a)
insert bibliography: key(ctrl-p shift-b)
insert quotation: key(ctrl-p ctrl-q)
insert quote: key(ctrl-p q)
insert verse: tkey(ctrl-p v)
insert code: key(ctrl-p c)
Insert typewriter: key(ctrl-shift-p)
insert unnumbered part: key(ctrl-p * 0)
insert unnumbered (section | heading): key(ctrl-p * 2)
insert unnumbered sub (section | heading): key(ctrl-p * 3)
insert unnumbered sub sub (section | heading): key(ctrl-p * 4)



#commands for quick subscripts
under (<user.letter>):
    key(_)
    insert(letter)
    edit.right()

under (<number>):
    key(_)
    insert(number)
    edit.right()

<user.letter> under (<number>):
    insert(letter)
    key(_)
    insert(number)
    edit.right()
#commands for quick superscripts
super (<number>):
    key(^)
    insert(number)
    edit.right()

super (<user.letter>):
    key(^)
    insert(letter)
    edit.right()

not equal: key(ctrl-m =)



# zero [matrix | vector]:
#     key(ctrl-m v)
#     insert("0")
#     edit.right()

#cardinality of a set
state cardinality <user.letter>:
    key(ctrl-m)       
    key(ctrl-m |)
    insert(user.formatted_text(letter, "ALL_CAPS"))
    edit.right()

#calligraphic font, must use capital letter
call mode: 
    insert("\mathcal ")
calligraphic <user.letter>:
    insert('\mathcal ')
    user.keys_uppercase_letters(letter)
    edit.right()





state done: "\\blacksquare "

#Large zero in matrices
huge zero:
    insert("\\text{\huge0")
    edit.right()
    edit.right()
part real:
    insert('\\textnormal Re ')
    edit.right()
part imagine:
    insert('\\textnormal Im ')
    edit.right()
argument:
    insert('\\textnormal Arg')
    edit.right()
#ceil and floor
mark ceiling:
    insert("\lceil ")
    insert("\\rceil ") 
    edit.left()
mark floor:
    insert("\lfloor ")
    insert("\\rfloor ") 
    edit.left()


oiler:
    insert('e^i')



#useful commands when writing pseudocode in lyx
chiff tab:
    key(shift-tab)
#array index
op under: 
    insert("[]")
    edit.left()
push semi: 
    edit.line_end()
    insert(";")
    key(enter)
semi:
    insert(";")
set compliment:
    insert("^c ")

multivariable limit:
    insert("\\lim _(x,y)\\rightarrow ")
    key(ctrl-m ()
covariance:
    insert("\\textrm Cov")
    edit.right()
    key(ctrl-m ()
variance:
    insert("\\textrm Var")
    edit.right()
    key(ctrl-m ()
expectation:
    insert("\\textrm E")
    edit.right()
    key(ctrl-m ()
correlation:
    insert("\\textrm Cor")
    edit.right()
    key(ctrl-m ()

