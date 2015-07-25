Project Euler
=============

Using Ruby 2.1.2, Minitest, and Rake

- To get the solutions for all problems so far, run `rake solve:all_problems`
- To get a solution for one problem, run `rake solve:problem[123]`
- To run all tests, run `rake test:all_problems`
- To run tests for one problem, run `rake test:problem[123]`

You can specify the max time in seconds allowed for solving problems via the `MAX_TIME` environment variable.
The default is 30 seconds.
Example: `rake solve:problem[1] MAX_TIME=60`

-------------------------------

##Note to ZSH users
If you use ZSH, then you will want to escape the brackets around rake command parameters or ZSH will throw a fit.
Example: `rake solve:problem\[1\]`

Zane Swafford 2015