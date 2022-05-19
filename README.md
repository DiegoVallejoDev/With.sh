# With.sh
Bash utility to work with different variable contexts
Safely sets a environment or not variable to a value then runs a command 
and then restores the variable to its original value

#### ⚠️ Warning: work in progress there has been a problem with the restore of the variable if PATH is changed with this

### Usage:
  ```With varname value command```
  
#### Parameters:
  - param1: variable name
  - param2: temp value
  - param3: command
  
*for a better human readability use functions:*

```
function Foo() {
   echo "$ENV_VAR"          
 }

 Foo                                //ENV_VAR_GLOBAL_VALUE
 With ENV_VAR "CUSTOM_VALUE" Foo    //CUSTOM_VALUE
```


---
Copyright (c) 2022, Diego Vallejo All rights reserved.
