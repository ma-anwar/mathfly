
app: lyx
-
state define <phrase>:
    insert("Definition - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")


operator <user.letters>:
    insert("\\text ")
    sleep(10ms)
    user.keys_lower_case_letters(letters)
    edit.right()
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
matrix <user.letter>:
    insert("  ")
    key(ctrl-m)
    user.keys_uppercase_letters(letter)
    #insert(user.formatted_text(letter,"title"))
    edit.right()
    insert("  ")
<number> by <number>:
    insert(" {number_1} x {number_2} ")
    
next:
    key(end)
    key(tab)
kick: ", "
that is: "i.e. " 
#push:
#    key(end)
#    key(end)

push dot:
    key(end)
    key(end)
    insert(".")

push:
    key(end)
    key(end)
    insert("  ")

push comma:
    key(end)
    key(end)
    insert(", ")
push math:
    key(space)
    key(ctrl-m)

state proof: "Pf: "
state solution: "Soln: "
ordinal <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}^th   ')
    key(space) 
state where: " where "
mark <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}  ')
    key(space)
relation <user.letter>:
    key(ctrl-m)
    insert('\mathcal ')
    user.keys_uppercase_letters(letter)
    edit.right()
    edit.right()

space relation <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('\mathcal ')
    user.keys_uppercase_letters(letter)
    edit.right()
    edit.right()
    insert('  ')
state cardinality <user.letter>:
   key(ctrl-m)       
   key(alt-m |)
   user.keys_uppercase_letters(letter)
   edit.right()
fill <number>:
    insert(number)
    key(tab)

fill pipe:
    insert('|')
    key(tab)
