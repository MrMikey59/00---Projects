# Data Types

The obscure Decimal data type does exist, but you can’t declare an item as being of that data type. Instead, you have to declare the item as a Variant data type with a subtype of Decimal. For example, Dim X as Variant defines a variable X as a variant; X = CDec(value) stores value in X as a Decimal data type.  

In Python, the datatypes integer, float, and string (and tuple) are “immutable.” Everything in Python is an object. There are two fundamental kinds of types. Scalar and non-scalar.

# Boolean  
A Scalar literal

# Date-Time

[MonthCalendar by Stephen Lebans](http://www.lebans.com/monthcalendar.htm) is a database containing a Class that wraps the Microsoft Month Calendar Common Control in an easy to use interface. This is a completely API generated Month Calendar derived directly from the Common Control DLL. There are no distribution or versioning issues as there are if you use the ActiveX Month Calendar control.

# Numbers  

## Complex

## Floating Point (Decimal) 

## Integers

int (integer) 
long 

# String

## Python String Identifiers

| Indentifier | Description | Example |  
| --- | --- | --- |   
| r | Raw data indicator when before a quoted string; Always use raw strings when dealing with regular expressions.  | `r"This is a raw data string.”` |  
| u | Unicode indicator when before a quoted string | `u"This is a Unicode string."` |  

# Structures

| Structure | Description | Examples |  
| --- | --- | --- |  
| dictionary | Dictionaries store a mapping between a set of keys and a set of values. You can define, modify, view, lookup, and delete the key-value pairs in the dictionary. (Immutable) | `a = { <Key1>:<Value1>, <Key2>:<Value2>, … <KeyN>:<ValueN>}` |  
| list | ordered sequence of items of mixed types (Sequence/Mutable) | `a = [<Item1>, <Item2>,…<ItemN>]` | 
| string | (Sequence/Immutable) |  |  
| tuple | A simple ordered sequence of items; Items can be of mixed types, including collection types (Sequence/Immutable) | `a = (<Item1>, <Item2>,…<ItemN>)` |  

## Structure Methods

| Method | Description | Example |  
| --- | --- | --- |  
| `SeqType[<Index>]` | using square bracket “array” notation; starting at position 0 to (length – 1) or counting from the right starting at -1 |  |  
| `SeqType[<Index1>:<Index2>]` | Slicing: Return a copy of the container with a subset of the original members. Start copying at the first index, and stop copying before the second index. Omit the first index to make a copy starting from the beginning of the container. Omit the second index to make a copy starting at the first index and going to the end of the container |  |  
| `SeqType[:]` | Copying: To make a copy of an entire sequence, you can use[:] Note the differences | `list2 = list1 # 2 names refer to 1 ref# Changing one affects both` <BR> `list2 = list1[:] # Two independent copies, two refs` |  
| Item in SeqType <BR> Item not in SeqType  | Boolean Expression to check if item is in or not in the SeqType. | ` t = [1, 2, 4, 5]` <BR> `3 in t # Returns False` <BR> `4 in t # Returns True` <BR> `4 not in t # Returns False` |  
| `SeqType.append(\<Item>)` | Add a single item  to a sequence | a.append(4) |  
| `SeqType.count(/<Item>)` | Returns count of occurrence of the item |  |  
| `SeqType.extend(<AddList>)` | Add a list of items to a sequence |  |  
| `SeqTest.index(<Item>)` | Returns index of first occurrence of the item |  |  
| `SeqType.insert(<Index>, <Item>)` |  |  |  
| `SeqType.remove(<Item>)` |  |  |  
| Removes the first occurrence  item for the sequence |  |  |  
| `SeqType.replace()` |  | `<String>.replace(<SearchString>, <ReplaceString>)` |  
| `SeqType.reverse()` | Reverses the sequence (In place) |  |  
| `SeqType.rjust()` | Right Justify |  |  
| `SeqType.sort()` | Sorts the sequence  (In place) | `li.sort(<UDFCall>) # sort in place using user-defined comparison` |  

## Structure Examples

#### Dictionary Handling
```python
a.clear # Removes the entire dictionary
a[<Key>] = <NewValue> # Modify a Key’s value
del a[<Key>] # Deletes the entry for <Key>
a.keys() # returns a list of keys
a.values() # returns a list of values
a.items() # returns a list of Key/Value tuples
```

# User Defined

