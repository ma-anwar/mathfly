app: lyx
-
#commands and symbols for matrix operations
transpose:
    key(^)
    insert("T")
    edit.right()
switch <number> by <number>:
    insert("R_{number} \leftrightarrow R_{number_2} ")
    key(right)
#insert matrix operations in labels 
operation:
    insert("\overset ")
    insert("~")
    key(up)
operations:
    insert("\stackrelthree ")
    key(down)
    insert("~")
    key(up)
#matrix row operations
scale <number> by <number>:
    insert("R_{number} ")
    key(alt-/)
    insert("{number_2}R_{number} ")
    key(right)
add <number> by <number> row <number>:
    insert("R_{number} ")
    key(alt-/)
    insert("R_{number} +{number_2}R_{number_3} ")
    key(right)
minus <number> by <number> row <number>:
    insert("R_{number} ")
    key(alt-/)
    insert("R_{number} -{number_2}R_{number_3} ")
    key(right)
row <number>:
    insert("R_")
    insert(number)
    key(right)
determine <user.letter>:
    insert('\det ')
    key(alt-m ( )
    user.keys_uppercase_letters(letter)
    edit.right()
    
determine:
    insert('\det')
    key(alt-m ()

#convenient way to denote vectors quickly
hat <user.letters>:
  key(alt-m v)
  sleep(10ms)
  insert(letters)
  edit.right() 
#Commands useful for taking notes in linear algebra
one to one: " 1-1 " 
homogenous system:
  key(ctrl-m)
  insert("A")
  key(alt-m v)
  insert("x")
  edit.right()
  insert("=")
  key(alt-m v)
  insert("0")
  edit.right()
  edit.right()
linear system:
  key(ctrl-m)
  insert("A")
  key(alt-m v)
  insert("x")
  edit.right()
  insert("=")
  key(alt-m v)
  insert("b")
  edit.right()
  edit.right()
math transformation:
  insert(' ')
  key(ctrl-m)
  insert("T:\\mathbb R ^n \\longrightarrow \\mathbb R ^m   ")
  
#e.g. "m x n matrix"
<user.letter> by <user.letter>:
    key(ctrl-m)
    insert(letter_1)
    insert("\\times ")
    insert(letter_2)
    edit.right()
    edit.right()
    insert("  ")

