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
    insert(user.formatted_text(letter,"title"))
    edit.right()
    insert("  ")
    
next: key(tab)
