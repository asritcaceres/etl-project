# Halloween Candies!

#### For this project our group decided to look at two different CSV files and compare candies. One CSV file was many candies that were judged by flavor, sugar content, price point, and ultimately a winning percent based on a match up. The match up gave each participant a choice between two candies and chose the one they liked the most.

#### The other data set provided a sample set that included if people enjoyed the candy or not- rating it Joy/Meh/Despair. With this dataset we cleaned it up within the excel sheet to only include the same candies as the first CSV file. Then we tallied up the Joy/Meh/Despair for each category and created the percent. We used the percent of joy as the "winning" candy.

#### After having both data sets, we used jupyter notebook to pull the data and create pandas data frames. We cleaned the files, renaming columns, dropping columns, and merging the data set.

#### Using engine we connected the dataframes to a database. We used the ERD to create the syntax for PostgresSQL and were able to create the table in PostgresSQL easily. At that point, once connected in Jupyter Notebook, we used pd.to_sql to fill the tables on the database.

#### At the end we added the variables to create a session and ultimately create a Flask app.py to showcase the findings on a local server.