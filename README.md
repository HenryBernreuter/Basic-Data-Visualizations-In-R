# Data Visualizations In R
This will be an example by example guide to R programming language. 

The first examples will be basic in nature. In order to use this properly the CSV files will need to be downloaded or I will use datasets that are buld into popular packages such as gapminder

R is a statistical analysis tool, not a database tool. 

The following is quoted from R user's manual. 
    "In general, statistical systems like R are not particularly well suited to manipulations of large-scale data. Some other systems are        better than R at this, and part of the thrust of this manual is to suggest that rather than duplicating functionality in R we can make      another system do the work! (For example Therneau & Grambsch (2000) commented that they preferred to do data manipulation in SAS and        then use package survival in S for the analysis.)."
     Therefore, I suggest you prepare, organize, and clean your data in tools like Excel or other database tools before loading it into R.  
I prefer using CSV files they are maybe the easiest to use; by calling read.csv(). 

read.csv() assumes that the first row of the spreadsheet is the name of the columns. If the first row of your spreadsheet is not the names of the columns, you should set header = FALSE. Or you can enter column names by hand either in Excel or Google Sheets. In R, it's more convenient to refer to a column by name. 

R doesn't like spaces in column names. So instead of naming your column "Engine size", it's better to name it "Engine_size" or "Engine.size". 

read.csv() also assumes that the columns are separated by comma.



