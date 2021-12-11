# Number Object

## Common Constants and Variables
| Value | Example Code |
| ---- | ---- |  
| Pi (`π`) | `Const Pi = 3.1415926` |  

## Number Systems

| Number System | Notation | Characters Used | Code Example | 
| ---- | ---- | ---- | ---- |   
| Decimal (base 10) | A normal integer without a leading 0 (zero) (e.g., 752) | ```0 1 2 3 4 5 6 7 8 9``` | `Const decChars = "0123456789"` |  
| Binary (base 2) |  | ``` 0 1 ``` | `Const binChars = "01"` |
| Octal (base 8) | An integer with a leading 0 (zero) (e.g., 056) |  ```0 1 2 3 4 5 6 7``` | `Const octChars = "01234567"` |  
| Hexadecimal (base 16) | An integer with a leading 0x or 0X (e.g., 0x5F or 0XC72) |  ```0 1 2 3 4 5 6 7 8 9 A B C D E F``` | `Const hexChars = "0123456789ABCDEF"` | 
| Roman |  | ```I V X L C M D``` | `Const decChars = "IVXLCMD"` |  

#### Convert Hexadecimal to Decimal
Requires: 
- arrHextoInt

```javascript
  function HextoDec(inColor, inIndex) {
    var i = arrHexToInt[inColor.substring(inIndex, inIndex + 1)];
    var j = arrHexToInt[inColor.substring(inIndex + 1, inIndex + 2)];
    return (i * 16) + (j * 1);
  }
```
##### Hexadecimal to Integer Array
```javascript
  var arrHexToInt = new Array();
  arrHexToInt = {
    "0": "0",  "1": "1",  "2": "2",  "3": "3",
    "4": "4",  "5": "5",  "6": "6",  "7": "7",
    "8": "8",  "9": "9",  "a": "10",  "b": "11",
    "c": "12",  "d": "13",  "e": "14",  "f": "15"
  }; 
```
