
app: lyx
-
push dot:
    key(end)
    key(end)
    insert(".")
#try to go to the very right, most useful navigation command
# parrot(tut):
#     key(end)
#     key(end)
#     insert("  ")
push:
    key(end)
    key(end)
    insert("  ")

push comma:
    key(end)
    key(end)
    insert(", ")
push math:
    key(end)
    key(end)
    insert("   ") 
    key(ctrl-m)

state define <phrase>:
    insert("Definition - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")
state prop <phrase>:
    insert("Proposition - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")

state idea <phrase>:
    insert("Thm - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")

justify <phrase>:
    key(end)
    key(end)
    insert('  - ')
    insert(phrase)
append:
    key(end)
example: insert("e.g. ")
capital example: insert("E.g. ")
proof let:insert("Let ")
if and only if: insert("iff ")


# 5 x 3 in the middle of normal text
<number> by <number>:
    insert(" {number_1} x {number_2} ")
next:
    key(end)
    key(tab)
kick: ", "
that is: "i.e. " 

state proof: "Pf: "
state solution: "Soln: "
# "n^th" 
ordinal <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}^th   ')
    key(space) 

state where: " where "
# math text letter in the middle of normal text
mark <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}  ')
    key(space)
#math text capital letter in the middle of normal text
matrix <user.letter>:
    insert("  ")
    key(ctrl-m)
    insert(user.formatted_text(letter, "ALL_CAPS"))
    edit.right()
    insert("  ")
#calligraphic letter in the middle of normal text
relation <user.letter>:
    key(ctrl-m)
    insert('\mathcal ')
    user.insert_formatted(letter,"ALL_CAPS")
    edit.right()
    edit.right()
#calligraphic letter in the middle of normal text
space relation <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('\mathcal ')
    user.insert_formatted(letter,"ALL_CAPS")
    edit.right()
    edit.right()
    insert('  ')
big equivalent:
    insert('LEQV ')

question <user.letter>:
    insert(" {letter}) ")