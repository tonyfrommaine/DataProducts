# DataProducts Project


##My Shiny Application
My application uses a public data set of height and weight of women from 1975.  I thought this would be interesting as the data is 40 years old and having people enter a height and seeing what it would have been back then would be interesting.

##Explanation of code
The code was created with both the UI.R and the Server.R for use in Shiny.  Ultimatley it was deployed on shinyapps.io at the url http://tonyfrommaine.shinyapps.io/myapp/.

###User Interface
The user interface has an input widget for selecting the height in the left panel.  Once entered it will update the fields below which echo back the height entered and the weight for that height woman in 1975.
On the right panel a plot showing all the heights and weights from the data set is shown.  The value picked by the user is shown by a larger red triangle.
If another value is chosen, then the fields and plots will update accordingly.

##Calculation and Logic
As directed by the course directions, the calculations are quite simple.  The entered height is used to lookup the respective weight.  Both of these populate the fields to be used by the UI.
There is then code for the plot that will change the symbol and color to match the point that is being selected.

