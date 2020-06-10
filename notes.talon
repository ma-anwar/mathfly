
app: lyx
-
definition <phrase>:
    insert("Definition - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")



idea <phrase>:
    insert("Thm - ")
    insert(user.formatted_text(phrase, "title"))
    insert(": ")

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
    
next: key(tab)
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
the: "the "
by: "by "
of: "of "
then: "then "
push math:
    key(space)
    key(ctrl-m)
