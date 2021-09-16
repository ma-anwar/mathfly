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
	key(alt-m f)
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
    key("alt-m [")
    insert('\\array ')
    key("alt-m c i")
    repeat(number-2)

matrix <number> by one:
    key("alt-m [")
    insert('\\array ')
    key("alt-m w i")
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
    key("alt-m w a")
line below:
    key("alt-m w z")
    
line right:
    key("alt-m c z")
line left:
    key("alt-m c a")
#matrix surrounded by pipes for cross product
cross <number> by <number>:
    key("alt-m |")
 	insert("\\array ")
 	key("alt-m w i")
 	repeat(number_1-2)
 	key("alt-m c i")
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

fraction: key(alt-m f)
over: key(shift-left alt-m f down)
(super script | to the power): key(^)
sub script: key(_)
squared: key(^ 2 right)
cubed: key(^ 3 right)
inverse: key(^ - 1 right)
(prekris | parens | brackets | parents): key(alt-m ()
(brax | square brackets): key(alt-m [)
curly [brackets]: key(alt-m {)
absolute: key(alt-m |)
angles: key(alt-m <)
add matrix row: key(alt-m w i)
(delete | remove) matrix row: key(alt-m w d)
add matrix column: key(alt-m c i)
(delete | remove) matrix column: key(alt-m c d)

accent tilde: key(alt-m &)
accent dot: key(alt-m .)
accent double dot : key("alt-m \")
accent bar: key(alt-m b)
accent vector: key(alt-m v)

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
new file: key(ctrl-n)
open file: key(ctrl-o)
save as: key(ctrl-shift-s)
math: key(ctrl-m)
display mode: key(ctrl-shift-m)
normal mode: key(alt-p s)
view PDF: key(ctrl-r)
update PDF: key(ctrl-shift-r)
next tab: key(ctrl-pgdown)
(prior | previous) tab: key(ctrl-pgup)
close tab: key(ctrl-w)
move line up: key(alt-up)
move line down: key(alt-down)
#formatting
insert (in line formula | in line): key(alt-i h i)
insert (numbered formula): key(alt-i h n)
insert (display formula | display): key(alt-i h d)
insert equation array: key(alt-i h e)
insert align: key(alt-i h a)
insert AMS align at [environment]: key(alt-i h t)
insert AMS flalign [environment]: key(alt-i h f)
insert (AMS gathered environment | AMS gather): key(alt-i h g)
insert (AMS multline [environment]| multiline): key(alt-i h m)
insert array [environment]: key(alt-i h y)
insert (cases [environment] | piecewise): key(alt-i h c)
insert (aligned [environment] | align): key(alt-i h l)
insert aligned at [environment]: key(alt-i h v)
insert gathered [environment]: key(alt-i h h)
insert split [environment]: key(alt-i h s)
insert delimiters: key(alt-i h r)
insert matrix: key(alt-i h x)
insert macro: key(alt-i h o)

insert [bulleted] list: key(alt-p b)
insert numbered list: key(alt-p e)
insert description: key(alt-p d)
insert part: key(alt-p 0)
insert (section | heading): key(alt-p 2)
insert sub (section | heading): key(alt-p 3)
insert sub sub (section | heading): key(alt-p 4)
insert paragraph: key(alt-p 5)
insert sub paragraph: key(alt-p 6)
insert title: key(alt-p t)
insert author: key(alt-p shift-a)
insert date: key(alt-p shift-d)
insert abstract: key(alt-p a)
insert address: key(alt-p alt-a)
insert bibliography: key(alt-p shift-b)
insert quotation: key(alt-p alt-q)
insert quote: key(alt-p q)
insert verse: tkey(alt-p v)
insert code: key(alt-p c)
Insert typewriter: key(ctrl-shift-p)
insert unnumbered part: key(alt-p * 0)
insert unnumbered (section | heading): key(alt-p * 2)
insert unnumbered sub (section | heading): key(alt-p * 3)
insert unnumbered sub sub (section | heading): key(alt-p * 4)



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

not equal: key(alt-m =)



# zero [matrix | vector]:
#     key(alt-m v)
#     insert("0")
#     edit.right()

#cardinality of a set
state cardinality <user.letter>:
    key(ctrl-m)       
    key(alt-m |)
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
    key(alt-m ()
covariance:
    insert("\\textrm Cov")
    edit.right()
    key(alt-m ()
variance:
    insert("\\textrm Var")
    edit.right()
    key(alt-m ()
expectation:
    insert("\\textrm E")
    edit.right()
    key(alt-m ()
correlation:
    insert("\\textrm Cor")
    edit.right()
    key(alt-m ()

