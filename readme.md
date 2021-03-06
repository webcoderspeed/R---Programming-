### R Programming

> R is a programming language and software environment for statistical analysis, graphic representation and reporting. R was created by Ross Ihaka and Robert Gentleman at the University of Auckland, New Zealand, and is currently developed by the R Development Core Team. R is freely available under the GNU General Public License, and pre-compiled binary versions are provided for various operating systems like Linux, Windows and Mac. This programming language was named R, based on the first letter of first name of the two R Authors (Robert Gentleman and Ross Ihaka), and partly a play on the name of the Bell Labs language S.

### R Datatypes:

> Generally, while doing programming in any programming language, you need to use various variable to store various information. Variables are nothing but reserved memory locations to store values. This means that, when you create a variable you reserve some space in memory.

> You may like to store information of various datatypes like character, wide character, integer, floating point, double, floating point, Boolean etc. Based on the data type of a variable, the operating system allocated memory and decides what can be stored in the reserved memory.

> In contrast to other programming languages like C and java in R, the variables are not declared as some data type of R-object becomes the datatype of the variable. There are many types of R-objects. The frequently used ones are -

- Vectors
- Lists
- Matrices
- Arrays
- Factors
- Data Frames

The simplest of the objects is the vector object and there are six datatypes of these atomic vectors, also termed as six classes of vectors. The other R-Objects are built upon the atomic vectors.

<table>
  <tr>
    <th>
    DataType 
    </th>
    <th>
    Example
    </th>
    <th>
    Verify
    </th>
  </tr>
  <tr>
  <td>
    Logical
  </td>
  <td>
  TRUE, FALSE
  </td>
  <td>
  v <-  TRUE
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "logical"
  </td>
  </tr>
  
  <tr>
  <td>
    Numeric
  </td>
  <td>
  12.3, 5, 999
  </td>
  <td>
  v <-  23.5
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "numeric"
  </td>
  </tr>
  
  <tr>
  <td>
    Integer
  </td>
  <td>
  2L, 34L, 0L
  </td>
  <td>
  v <-  2L
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "integer"
  </td>
  </tr>

<td>
    Complex
  </td>
  <td>
  3 + 2i
  </td>
  <td>
  v <-  2 + 5i
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "complex"
  </td>
  </tr>
  
  <td>
    Character
  </td>
  <td>
  'a', "good", "TRUE", "23.4"
  </td>
  <td>
  v <-  "TRUE"
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "character"
  </td>
  </tr>

  <td>
    Raw
  </td>
  <td>
  "Hello" is stored as 48 65 6c 6c 6f
  </td>
  <td>
  v <-  charToRaw("Hello")
  </br>
  print(class(v))
  </br>
  it produces the following result - 
  </br>
  [1] "raw"
  </td>
  </tr>

</table>

> In R programming, the very basic data types are the R-objects called **vectors** which hold elements of different classes as shown above. Please note in R the number of classes is not confined to only above six types. For example, we can use many atomic vectors and create an array whose class will become array.

### Vectors

> When you want to create vector with more than one element, you should use c() function which means to combine the elements into a vector.

        # create a vector
        friends <- c('sanjeev', 'vikas', 'ratna')
        print(friends)

        # get the class of the vector.
        print(class(friends))

> When we execute the above code, it produces the following result -

        [1] "sanjeev"   "vikas"   "ratna"
        [1] "character"

### Lists

> A list is an R-object whihc can contain many different types of elements inside it like vectors, functions and eve another list inside it.

        # create a list
        list1 <- list(c('sanjeev', 'vikas', 'ratna'), 65, sin)
        print(list1)

        # get the class of the list.
        print(class(list1))

> When we execute the above code, it produces the following result -

        [[1]] "sanjeev"   "vikas"   "ratna"
        [1]  "character"

        [[2]] 65
        [1] "integer"

        [[3]] sin
        function (x)  .Primitive("sin")

### Matrices

> A matrix is an two-dimensional rectangular data set. It can be created using a vector input to the matrix function.

      # create a matrix
      matrix1 <- matrix(c('a', 'a', 'b',  'c', 'b', 'a'), nrow = 2, ncol = 3, byrow = TRUE)
      print(matrix1)

> When we execute the above code, it produces the follwing result -

          [, 1] [, 2] [, 3]
    [1, ]  "a"  "a"   "b"
    [2, ]  "c"  "b"   "a"

### Arrays

> While matrices are confined to two dimensions, arrays can be of any number of dimensions. The array function takes a dim attribute which creates the required number of dimension. In the below example we create array with two elements which are 3 X 3 matrices each.

      # create an array
      array1 <- array(c("green", "yellow"), dim=c(3,3,2))
      print(a)

> When we execute the above code, it produces the following result - 

        , , 1

          [,1]     [,2]     [,3]    
      [1,] "green"  "yellow" "green" 
      [2,] "yellow" "green"  "yellow"
      [3,] "green"  "yellow" "green" 

      , , 2

          [,1]     [,2]     [,3]    
      [1,] "yellow" "green"  "yellow"
      [2,] "green"  "yellow" "green" 
      [3,] "yellow" "green"  "yellow"  

### Factors 
> Factors are the r-objects which are created using a vector. It stores the vector along with the distinct values of the elements in the vector as labels. The labels are always chartacter irrespective of wheather it is numeric or character or Boolean etc, in the input vector. They are useful in statistical modelling.

> Factors are created using the factor() function. The nlevels functions gives the count of levels.

        # Create a vector.
        apple_colors <- c("green", "green", "yellow", "red", "red", "red", "green")

        # Create a factor object.
        factor_apple <- factor(apple_colors)

        # Print the factor.
        print(factor_apple)
        print(nlevels(factor_apple))

> When we execute the above code, it produces the following result - 

      [1] green  green  yellow red    red    red    green 
      Levels: green red yellow
      [1] 3

### DataFrames 
> Data frames are tabular data objects. Unlike a matrix in data frame each colum can contain different modes of data. The first column can be numeric while the second column can be character and third column can be logical. It is a list of vectors of equal length.

> Data Frames are created using the data.frame() function.

        # create the dataframe.
        BMI <- data.frame(
          gender <- c('Male', 'Male', 'Female'),
          height <- c(152, 171.5, 165),
          weight <- c(81, 93, 78)
          age <- c(42, 38, 26)
        )

        print(BMI)

> When we execute the above code, it produces the following result - 

        gender height weight Age
      1   Male  152.0     81  42
      2   Male  171.5     93  38
      3 Female  165.0     78  26  

### Variables
> A variable privides us with named storage that our program can manipulate. A varibale in R can store an atomic vector, group of atomic vectors or a combination of many R-objets. A valid variable name consists of letters, numbers and the dot or underline characters. The variable name starts with a letter or the dot not followed by a number.

<table>
  <tr>
  <th>
  Variable Name
  </th>
  <th>
  Validity
  </th>
  <th>
  Reason
  </th>
  </tr>
  
  <tr>
  <td>
    var_name2.
  </td>
  <td>
  valid
  </td>
  <td>
  Has letters, numbers, dot and underscore
  </td>
  </tr>

  
  <tr>
  <td>
    var_name2%
  </td>
  <td>
  Invalid
  </td>
  <td>
  Has the character '%'. Only dot(.) and underscore( _ ) allowed
  </td>
  </tr>

  <tr>
  <td>
    2var_name
  </td>
  <td>
  Invalid
  </td>
  <td>
  Can start with a dot(.) but the dot(.) should not be followed by a number
  </td>
  </tr>

  <tr>
  <td>
    .var_name,
    var.name
  </td>
  <td>
  valid
  </td>
  <td>
  Can start with a dot(.) but the dot(.) should not be followed by a number.
  </td>
  </tr>

  
  <tr>
  <td>
  .2var_name
  </td>
  <td>
  invalid
  </td>
  <td>
  The starting dot(.) is followed by a number making it invalid
  </td>
  </tr>

  <tr>
  <td>
  _var_name
  </td>
  <td>
  invalid
  </td>
  <td>
  Starts with _ which is not valid
  </td>
  </tr>

</table>


### Variable Assignment
> The variable can be assigned values using leftward, rightward and equal to operator. The values of the variables can be printed using print() or cat() funtion. The cat() function combines muliple items into a continous print output.

      # Assignment using equal operator
      var.1 = c(0, 1, 2, 3)

      # Assignment using leftward operator
      var.2 = c('Speed', 'Academy')

      # Assignment using rightward operator
      c(TRUE, 1) -> var.3

      print(var.1)
      cat("var.1 is ", var.1, "\n")
      cat("var.2 is ", var.2, "\n")
      cat("var.3 is ", var.3, "\n")

> When we execute the above code, it produces the following result - 

      [1] 0 1 2 3
      var.1 is  0 1 2 3
      var.2 is  learn R
      var.3 is  1 1

> **Note** - The vector c(TRUE, 1) has a mix of logical and numeric class. So logical class is coerced to numeric class making TRUE as 1.

### Data Type of a variable 
> In R, a variable itself is not declared of any data type, rather it gets the data type of the R - object assigned to it. So R is called a dynamically typed language, which means that we can change a variable's data type of the same variable again and again when using it in a program.

        var_x <- "Hello"
        cat("The class of var_x is ",class(var_x),"\n")

        var_x <- 34.5
        cat("  Now the class of var_x is ",class(var_x),"\n")

        var_x <- 27L
        cat("   Next the class of var_x becomes ",class(var_x),"\n")

> When we execute the above code, it produces the following result - 

      The class of var_x is  character 
        Now the class of var_x is  numeric
        Next the class of var_x becomes  integer

### Finding variables
> To know all the variables currently avaiable in the workspace we use the ls() function. Also the ls() function can use patterns to match the variable names

        print(ls())

> When we execute the above code, it produces the following result - 
  
      [1] "var.1" "var.2" "var.3" "var_x" 

> **Note** - It is a sample output depending on what variables are declared in your environment.
> The ls() function can use patterns to match the variable names.

    # List the variables starting with the pattern "var".
      print(ls(pattern = "var"))   

> When we execute the above code, it produces the following result - 

      [1] "var.1" "var.2" "var.3" "var_x" 

> The variables starting with dot(.) are hidden, they can be listed using "all.names = TRUE" argument. to ls() function.

      print(ls(all.name = TRUE))

> When we execute the above code, it produces the following result ???

      [1] ".name" "var.1" "var.2" "var.3" "var_x"

### Deleting variables
> Variables can be deleted by using the rm() function. Below we delete the variable var.3. On printing the value of the varibale error is thrown,

      rm(var.3)
      print(var.3)

> When we execute the above code, it produces the following result - 

      [1] "var.3"
      Error in print(var.3) : object 'var.3' not found

> All the variables can be deleted by using the rm() and ls() function together.

      rm(list = ls())
      print(ls())

> When we execute the above code, it produces the follwing result - 

      character(0)

### Operators
> An operator is a asymbol that tells the compiuler to perform specifpic mathematical or logical manipulations. R language is rich in built-in operators and provides following types of operators.

### Types of Operators
> We have the following types of operators in R - Programming - 
 - Arithmetic operators
 - Relational operators
 - Logical operators
 - Assignement operators
 - Miscellaneous operators

### Arthmetic operators
> Following tbale show th4e arithmetic operatos supported by R language. The

<table>
  <tr>
    <th>Operator</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>+</td>
    <td>Adds two vectors</td>
    <td>
      v <- c(2, 5.5, 6)
    </br>
      t <- c(8, 3, 4)
    </br>
      print(v+t)
    </br>
    it produces the following result - 
    </br>
    [1] 10.0 8.5 10.0
    </td>
  </tr>

  <tr>
    <td>-</td>
    <td>Subtracts second vector from the first</td>
    <td>
      v <- c(2, 5.5, 6)
    </br>
      t <- c(8, 3, 4)
    </br>
      print(v-t)
    </br>
    it produces the following result - 
    </br>
    [1] -6.0 2.5 2.0
    </td>
  </tr>

  <tr>
    <td>/</td>
    <td>Divide the first vector with the second</td>
    <td>
      v <- c(2, 5.5, 6)
    </br>
      t <- c(8, 3, 4)
    </br>
      print(v/t)
    </br>
    it produces the following result - 
    </br>
    [1] 0.250000 1.833333 1.5000000
    </td>
  </tr>

  <tr>
    <td>%%</td>
    <td>
      The result of division of first vector with second (quotient)
    </td>
    <td>
      v <- c(2, 5.5, 6)
    </br>
      t <- c(8, 3, 4)
    </br>
      print(v%%t)
    </br>
    it produces the following result - 
    </br>
    [1] 0 1 1 
    </td>
  </tr>

  <tr>
    <td>^</td>
    <td>
      The first vector raised to exponent of second vector
    </td>
    <td>
      v <- c(2, 5.5, 6)
    </br>
      t <- c(8, 3, 4)
    </br>
      print(v^t)
    </br>
    it produces the following result - 
    </br>
    [1] 256.000 166.75 1296.000
    </td>
  </tr>  
</table>

### Relation Operators
> Following table shows the relational operators supported by R language. Each element of the first  vector is compared with the coressponding element of the second vector. The result of comparison is a Boolean value.

<table>
  <tr>
    <th>Operator</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>></td>
    <td>
      Checks if each element of the first vector is greater than the corresponding element of second vector
    </td>
    <td>
      v <- c(2, 5.5, 6, 9)
    </br>
      t <- c(8, 2.5, 14, 9)
    </br>
      print(v>t)
    </br>
    it produces the following result - 
    </br>
    [1] FALSE TRUE FALSE FALSE
    </td>
  </tr>

  <tr>
    <td><</td>
    <td>
      Checks if each element of the first vector is less than the coressponding element of the second vector.
    </td>
    <td>
      v <- c(2, 5.5, 6, 9)
    </br>
      t <- c(8, 2.5, 14, 9)
    </br>
      print(v<t)
    </br>
    it produces the following result - 
    </br>
    [1] TRUE FALSE TRUE FALSE
    </td>
  </tr>

  <tr>
    <td><=</td>
    <td>
      Checks if each element of the first vector is less than or equal to the corresponding element of the second vector
    </td>
    <td>
      v <- c(2, 5.5, 6, 9)
    </br>
      t <- c(8, 2.5, 14, 9)
    </br>
      print(v<=t)
    </br>
    it produces the following result - 
    </br>
    [1] TRUE FALSE TRUE TRUE
    </td>
  </tr>

  <tr>
    <td><=</td>
    <td>
      Checks if each element of the first vector is greater than or equal to the corresponding element of the second vector
    </td>
    <td>
      v <- c(2, 5.5, 6, 9)
    </br>
      t <- c(8, 2.5, 14, 9)
    </br>
      print(v>=t)
    </br>
    it produces the following result - 
    </br>
    [1] FALSE TRUE FALSE TRUE
    </td>
  </tr>

  <tr>
    <td>!=</td>
    <td>
      Checks if each element of the first vector is unequal to the corresponding element of the second vector
    </td>
    <td>
      v <- c(2, 5.5, 6, 9)
    </br>
      t <- c(8, 2.5, 14, 9)
    </br>
      print(v != t)
    </br>
    it produces the following result - 
    </br>
    [1]  TRUE  TRUE  TRUE FALSE
    </td>
  </tr>
</table>

### Logical Operator
> Following table shows the logical operators supported by R lanaguage. It is applicable only to vectors of type logical, numeric or complex. All numbers greater than 1 are considered as logical value TRUE.

> Each element of the first vector is compared with the corresponding element of the second vector. The result of comparison is a Boolean value.

<table>
  <tr>
    <th>Operator</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>&</td>
    <td>
      It is called Element-wise Logical AND operator. It combines each element of the first vector with the corresponding element of the second vector and gives a output TRUE if both elements are TRUE.
    </td>
    <td>
      v <- c(3, 1. TRUE, 2+3i)
    </br>
      t <- c(4, 1, FALSE, 2+3i)
    </br>
      print(v & t)
    </br>
    it produces the following result - 
    </br>
    [1] TRUE TRUE FALSE TRUE
    </td>
  </tr>

  <tr>
    <td>|</td>
    <td>
      It is called Element-wise Logical OR operator. It combines each element of the first vecotr with corresponding element of the second vector and gives a output TRUE if one the elements is TRUE.
    </td>
    <td>
      v <- c(3, 0, TRUE, 2+2i)
    </br>
      t <- c(4, 0, FALSE, 2+3i)
    </br>
      print(v | t)
    </br>
    it produces the following result - 
    </br>
    [1] TRUE FALSE TRUE TRUE
    </td>
  </tr>
  
  <tr>
    <td>!</td>
    <td>
      It is called Logical NOT operator. Takes each element of the vector and gives the opposite logical value.
    </td>
    <td>
      v <- c(3, 0, TRUE, 2+2i)
    </br>
      print(!v)
    </br>
    it produces the following result - 
    </br>
    [1] FALSE TRUE FALSE FALSE
    </td>
  </tr>
</table>

> The logical operator && and || considers only the first element of the vectors and give a vector of single element as output.


<table>
  <tr>
    <th>Operator</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>&&</td>
    <td>
      It is called Logical AND operator. Takes first element of both the vectos and gives the TRUE only if both are TRUE.
    </td>
    <td>
      v <- c(3, 0, TRUE, 2+2i)
    </br>
      t <- c(1, 3, TRUE, 2+3i)
    </br>
      print(v && t)
    </br>
    it produces the following result - 
    </br>
    [1] TRUE 
    </td>
  </tr>

  <tr>
    <td>||</td>
    <td>
      It is called Logical OR operator. Takes first element of both the vectors and gives the TRUE if one of them is TRUE.
    </td>
    <td>
      v <- c(0, 0, TRUE, 2+2i)
    </br>
      t <- c(0, 3, TRUE, 2+3i)
    </br>
      print(v || t)
    </br>
    it produces the following result - 
    </br>
    [1] FALSE
    </td>
  </tr>
</table>







### Assignment operators 
> These operators are used to assign values to vectors.

<table>
  <tr>
    <th>Operator</th>
    <th>Description</th>
    <th>Example</th>
  </tr>

  <tr>
    <td>
      <-
    </br>
    or
    </br>
=
    </br>
or
    </br>
<<-
    </td>
    <td>
      It is called Left Assignment Operator
    </td>
    <td>
v1 <- c(3,1,TRUE,2+3i)
    </br>
v2 <<- c(3,1,TRUE,2+3i)
    </br>
v3 = c(3,1,TRUE,2+3i)
    </br>
print(v1)
    </br>
print(v2)
    </br>
print(v3)
    </br>
    it produces the following result - 
    </br>
    [1] 3+0i 1+0i 1+0i 2+3i
    </br>
[1] 3+0i 1+0i 1+0i 2+3i
    </br>
[1] 3+0i 1+0i 1+0i 2+3i
    </br>
    </td>
  </tr>

  <tr>
<td>
      ->
</br>
or
</br>
->>
</td>
   <td>
      It is called Right Assignment Operator
    </td>

  <td>
    c(3,1,TRUE,2+3i) -> v1
</br>

c(3,1,TRUE,2+3i) ->> v2 
</br>

print(v1)
</br>

print(v2)
</br>

it produces the following result - 
</br>

  [1] 3+0i 1+0i 1+0i 2+3i
</br>
  [1] 3+0i 1+0i 1+0i 2+3i
  </td>

  </tr>
</table>

### Micellaneous operators
> These operators are used for specific purpose and not general mathematical or logical computation.

<table>
<tr>
    <th>Operator</th>
  <th>Description</th>
  <th>Example</th>
</tr>

<tr>
  <td>:</td>
  <td>Colon operator. It creaye the series of numbers in sequence for a vector</td>
  <td>
    v <- 2:8
  </br>
  it produces the following result - 
</br>
  [1] 2 3 4 6 7 8
  </td>
</tr>

<tr>
  <td>%in%</td>
  <td>
    This operator is used to identify if an element belong to a vector.
  </td>
  <td>
    v1 <- 8
  </br>
    v2 <- 12
  </br>
  t <- 1:10
</br>
print(v1 %in% t)
</br>
print(v2 %in% t)
</br>
  it produces the following result - 
</br>
  [1] TRUE
</br>
  [1] FALSE
  </td>
</tr>

<tr>
  <td>%*%</td>
  <td>
    This operator is used to multiply a matrix with its transpose
  </td>
  <td>
    M <- matrix( c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)
</br>
    t <- M %*% t(M)
</br>
    print(t)
</br>
    it produces the following result -
</br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [, 1] [, 2]
</br>
    [1, ]  &nbsp; 65   &nbsp;&nbsp; 82
</br>
    [2, ] &nbsp;  82   &nbsp;&nbsp; 117
  </td>
</tr>
</table>

### Decision Making
> Decision making structures require the programmer to specify one or more condition evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other statements to be executed if the condition is determined to be false.

> Following is the general form of a typical decision making structure found in most of the programming langauges.

<center>
<img src="https://www.tutorialspoint.com/r/images/r_decision_making.png" alt="general form of a typical decision making structure">
</center>

> R provide the following types of decision making statements are as follows:
 - if statement
 - if-else statement
 - else-if statement (nested if-else statement)
 - switch statement

### if Statement
> The if-statement consists of the Boolean expressions followed by on eor more statements. The if statement is the simplest decision-making statement which helps us to take a decision on the basis of the condition.

> The if statement is a conditional programming statement which performs the function and displays the information if it is proved true.

> The block of code inside the if-statement will be executed only when the boolean expression evaluates to be true. If the statement evaluates falsem then the code which is mentioned after the condition will run.

> The syntax of it-statement is R is as follows:

      if(boolean_expression) {
        // if the boolean_expression is true, then only the statement(s) will be executed
      }

#### Flow chart of if-statement:
<center>
<img src="https://static.javatpoint.com/tutorial/r/images/r-if-statement.png" alt="Flow chart of if-statement">
</center>

##### Example: 

      x <- 24
      y <- 5

      if(x>y) {
        print('inside the if-statement')
      } 
      print('outside the if-statement')

> The above code will produce the following result -

      [1] "inside the if-statement"
      [1] "outside the if-statement"

### if-else Statement
> In the **if** statement, the inner code is executed when the codition is true. Tje code which is outside the block will be executed whene the if condition is false.
> There is another type of decision-making statement known as the if-else statement. An if-else statement is the if statement followed by an else statement. An if-else statement, else statement will be executed when boolean expression will false. In simple words, If a Boolean expression will have true value, then the if block gets executed otherwise, the else block will executed.
> R programming treats any non-zero and non-null values as true, and if the value is either zero or null, then it treats them as false.
> The basic syntax of **if-else** statement is as follows:

      if (boolean_expression) {
        // statement(s) will be executed if the boolean_expression is true
      } else {
        // statement(s) will be executed if the boolean_expression is false
      }

#### Flow chart of the if-else statement:
<center>
<img src='https://static.javatpoint.com/tutorial/r/images/r-if-else-statement.png' alt='flow chart of the if-else statement' style="background: white">
</center>

##### Example: 

      x <- 5
      y <- 4

      if(x>y) {
        print("x is greater than y")
      } else {
        print("y is greater than x")
      }

> The above code will produce the following result - 

      [1] "x is greater than y"

### else if statement (nested if-else statement)
> This statement is also known as nested if-else statement. The if statement is followed by an optional else if .... else statement. This statement is used to various condition in a single if....else if statement. There are some key points which are necessary to keep in mind when we are using the if...else if..else statement. These points are as follows:

1) **if** statement can have either zero or one **else** statement and it must come after any **else if's** statement.
2) **if** statement can have many **else if's** statement and they come before the else statement.
3) Once an **else if** statement succeeds, none of the remaining **else if's** or **else's** will be tested.

> The basic syntax of if-else statement is as follows:

      if(boolean_expression_1) {
        // this block executes when the boolean expression 1 is true
      } else if(boolean_expression_2) {
        // this block executes when the boolean expression 2 is true
      } else {
        // this block executes when none of the above condition is true
      }

#### Flow chart of else-if statement
<center>
<img src='https://static.javatpoint.com/tutorial/r/images/r-else-if-statement.png' alt='Flow chart of else-if statement' style="background: white">
</center>

##### Example:

      age <- readline(prompt = "Enter age: ")
      age <- as.integer(age)

      if(age<18) {
        print("you are a child")
      } else if(age>30) {
        print("you are an old guy")
      } else {
        print("you are adult")
      }

> The above code will produce the following result - 

      > source("d:\\DATA\\COLLEGE\\SEM 7\\R\\notes\\notes.r", encoding = "UTF-8")
      Enter age: 5
      [1] "You are child"
      > source("d:\\DATA\\COLLEGE\\SEM 7\\R\\notes\\notes.r", encoding = "UTF-8")
      Enter age: 25
      [1] "You are adult"
      > source("d:\\DATA\\COLLEGE\\SEM 7\\R\\notes\\notes.r", encoding = "UTF-8")
      Enter age: 36
      [1] "You are old guy"  

### Switch Statement
> A switch statement is a selection control mechanism that allows the value of an expression to change the control flow of profram execution via map and search.
> The switch statement is used in place of long if statements which compare a variable with several integral values. It is a multi-way branch statement which provides an easy way to dispatch execution for different parts of code. This code is based on the value of the expression.
> This statement allows a variable to be tested for equality against a list of values. A switcg statement is a little bit complicated. To understand it, we have some key points which are as follows:
  - if expressiong type is a character string, the string is matched to the listed cases.
  - if there is more than one matcgm the first match element is used. 
  - No default case is avaiable
  - if no case if matched, an unnamed case is used.

> There are basically two ways in which one of the cases is selected.

1) Based on Index:
> If the cases are values like a character vector, and the expression is evaluated to a number than the expression's result is used as an index to select the case.

2) Based on Matching Value:
> When the cases have both case value and output value like ["case_1" = "value1"], then the expression value is matched against case values. If there is a match with the case, the corresponding value is output.

--------------------------
> The basic syntax of switch statement is as follows:

      switch(expression, case1, case2, case3, ....)

#### Flow chart of switch statement:
<center>
<img src='https://static.javatpoint.com/tutorial/r/images/r-switch-statement.png' alt='flow chart of switch statement'>
</center>

##### Example: 

      x <- switch(
        3, 
        'Sanjeev',
        'Vikas',
        'Ratna',
        'Niki'
      )
      print(x)

> The above code will produce the following result - 

      [1] "Ratna"

### Loops
> There may be a situation when you need to execute a block of code several number of times. In general, statements are executed sequentially. The first statement in a function is executed first, followed by the second, and so on.
> Programming languages provide various control structures that allow for more complicated execution paths.
> A loop statement allows us to execute a statement or group of statements multipe times and the following is the general form of a loop statement in most of the programming languages.

<center>
<img src='https://www.tutorialspoint.com/r/images/loop_architecture.jpg'  alt='general form a loop statement'>
</center>

> R programming language provides the following kinds of loop to handle looping requirements.
 - repeat loop
   - Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.
 - while loop
   - Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.
 - for loop
   - Like a while statement, except that it tests the condition at the end of the loop body.

### Repeat loop
> The **repeat loop** executes the same code again and again until a stop condition is met.
> The basic syntax for creating a repeat loop in R is -

      repeat {
        # statements
        if (condition) {
          break
        }
      }

#### Flow chart of repeat loop:
<center>
  <img src='https://www.tutorialspoint.com/r/images/r_break_statement.jpg'  alt='Flow chart of repeat loop'>
</center>

##### Example:

        v <- c('Hello', 'Speed')
        count <- 2

        repeat {
          print(v)
          count <- count + 1

          if(count > 5) {
            break
          }
        }

> The above code will produce the following result - 

      [1] "Hello" "Speed"
      [1] "Hello" "Speed"
      [1] "Hello" "Speed"
      [1] "Hello" "Speed"

### While loop
> The **while loop** executes the same code again and again until a stop condition is met.
> The basic syntax for creating a while loop in R - 

        while (test_expression) {
          statement
        }

#### Flow chart of while loop:
<center>
  <img src='https://www.tutorialspoint.com/r/images/swift_while_loop.jpg' alt='flow chart of while loop'>
</center>

> Here key point of **while** loop is that the loop might not ever run. When the condition is tested and the result is false, the loop body will be skipped and the first statement after the while loop will be executed.

##### Example:

      v <- c("Hello", "Speed")
      count <- 2
      
      while (count < 7) {
        print(v)
        count <- count + 1
      }

> The above code will produce the following result -

      [1] "Hello" "Speed"
      [1] "Hello" "Speed"
      [1] "Hello" "Speed"
      [1] "Hello" "Speed"
      [1] "Hello" "Speed"

### For loop
> A **for loop** is a repeation control structure that allows you to efficiently write a loop that needs to execute a specific number of times.
> The basic syntax for creating a **for** loop statement in R is -

      for (value in vector) {
        statements
      }

#### Flow chart  of for loop:
<center>
<img src='https://www.tutorialspoint.com/r/images/r_for_loop.jpg' alt='flow chart of for loop'>
</center>

> R's for loops are particularly flexible in that they are not limited to integers, or even numbers in the input. We can pass character vectors, logical vectors, lists or expressions.

##### Example:

      v <- LETTERS[1:4]
      for (i in v) {
        print(i)
      }

> The above code will produce the following result - 

      [1] "A"
      [1] "B"
      [1] "C"
      [1] "D"