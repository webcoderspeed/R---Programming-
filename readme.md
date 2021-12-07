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

> When we execute the above code, it produces the following result −

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
