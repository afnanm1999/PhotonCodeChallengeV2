
# PhotoCodeChallenge


# Instructions

The point of this kata is to help us understand how you think, code, test, and communicate. You may craft your solution as either an Android app using Android Studio, or an iOS app using Swift and Xcode. Your deliverable is the source code and project files to your solution along with instructions on how we run your code. It is important that your code is test driven using a unit/integration test framework.

All problems require some kind of input. You are free to implement any mechanism for feeding input into your solution (for example, using hard coded data within an automated test). You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works correctly against the supplied test data. There should also be a user interface where we can enter data for small matrices (up to 10 rows by 10 columns).

Although there is a right answer for the data, there is no right answer about presentation. Your submission should be written in a way that you find satisfying for yourself. When crafting your solution, remember that we value TDD-ed code, and spend more time reviewing your code than checking out its GUI goodness.

# Path of Lowest Cost
# The Challenge

The objective is to find the path of lowest cost when moving across a grid. For this challenge, you are provided a grid of integers where each integer represents the amount of cost encountered at a given point on the grid. A path enters the grid from the left (at any point) and passes through the grid to the right, moving only one column per round. Movement is always to the same row or an adjacent row, meaning the path can proceed horizontally or diagonally. For the sake of this challenge, we assume the first and last row are also adjacent. Effectively, the grid “wraps”.

The total cost of a path is the sum of the integers in each of the visited cells. The solution needs to handle grids of various sizes with a minimum of 1 row and 5 columns up to 10 rows and 100 columns. If in the next move, the total cost will exceed 50, that path is abandoned.

The purpose of this challenge is to find the path of least cost (that is, the path with the lowest total cost of any possible path). The paths of least cost through two slightly different 5 x 6 grids are shown below. The grid values differ only in the bottom row. The path for the grid on the right takes advantage of the adjacency between the first and last rows.

# Input

The input consists of a sequence of row specifications. Each row is represented by a series of delimited integers on a single line. Note: integers are not restricted to being positive.

# Output

Three lines should be output for each matrix specification. The first line is either “Yes” or “No” to indicate the path made it all the way through the grid. The second line is the total cost. The third line shows the path taken as a sequence of n delimited integers, each representing the rows traversed in turn. If there is more than one path of least cost, only one path need be shown in the
solution.

### Example One

#### Input
3 4 1 2 8 6
6 1 8 2 7 4
5 9 3 9 9 5
8 4 1 3 2 6
3 7 2 8 6 4

#### Output
Yes
16
[1 2 3 4 4 5]

### Example Two

#### Input
3 4 1 2 8 6
6 1 8 2 7 4
5 9 3 9 9 5
8 4 1 3 2 6
3 7 2 1 2 3

#### Output
Yes
11
[1 2 1 5 4 5]


### Example Three

#### Input
19 10 19 10 19
21 23 20 19 12
20 12 20 11 10

#### Output
No
48
[1 1 1]

## How to Use the app

So to test the app you must first pull the project files and open it in Xcode.
You shouldn't have to configure anything inside of the application source code. Just go ahead and run it on a simulator and when the app first launches it should have these values already inside the UITextView.


3 4 1 2 8 6\n
6 1 8 2 7 4\n
5 9 3 9 9 5\n
8 4 1 3 2 6\n
3 7 2 8 6 4\n

You can just go ahead and click on a UIButton(Submit). This will then show you the expected result of

Yes
16
[1 2 3 4 4 5]

You can also put your custom values inside of the UITextView to further test the app.

##### Make sure that you don't leave an empty line inside of UITextView.
#
## Test Cases

### Sample 1: (6X5 matrix normal flow):

#### Input
3 4 1 2 8 6
6 1 8 2 7 4
5 9 3 9 9 5
8 4 1 3 2 6
3 7 2 8 6 4

#### Output:
Yes
16
[1 2 3 4 4 5]


### Sample 2: (6X5 matrix normal flow):

#### Input:
3 4 1 2 8 6
6 1 8 2 7 4
5 9 3 9 9 5
8 4 1 3 2 6
3 7 2 1 2 3



#### Output:
Yes
11
[1 2 1 5 4 5]

### Sample 3: (5X3 matrix with no path <50)

#### Input:
19 10 19 10 19
21 23 20 19 12
20 12 20 11 10

#### Output:
No
48
[1 1 1]

### Sample 4: (1X5 matrix)

#### Input:
5 8 5 3 5

#### Output:
Yes
26
[1 1 1 1 1]

### Sample 5: (5X1 matrix)
#### Input:
5
8
5
3
5

#### Output:
Yes
3
[4]

### Sample 6: (Non numeric input, Optional)

#### Input:
5 4 H
8 M 7
5 7 5

#### Output:
Invalid matrix

### Sample 7: (No input - Optional)

#### Input:



#### Output:
Invalid matrix

### Sample 8: (Starting with >50)
#### Input:
69 10 19 10 19
51 23 20 19 12
60 12 20 11 10

#### Output:
No
0
[]

### Sample 9: (One value >50)

#### Input:
60 3 3 6
6 3 7 9
5 6 8 3

#### Output:
Yes
14
[3,2 1 3]

### Sample 10: (Negative values)
#### Input:
6,3,-5,9
-5,2,4,10
3,-2,6,10
6,-1,-2,10

####  Output:
Yes
0
[2,3 4 1]

### Sample 11: Complete path vs. lower cost incomplete path
#### Input:
51 51
0 51
51 51
5 5

#### Expected output:
Yes
10
4 4

### Sample 12: Longer incomplete path vs. shorter lower cost incomplete path
#### Input:
51 51 51
0 51 51
51 51 51
5 5 51

#### Expected output:
No
10
4 4

### Sample 13: Large number of columns
#### Input:
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

#### Expected output:
Yes
20
1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1

