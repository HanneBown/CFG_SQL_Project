# Code First Girls Introduction to Data and SQL kickstarter course final project
In this post I talk through my final project from Code First Girls Data and SQL kickstarter course I completed in October 2023. I am pleased to say that my project was commended as the best project for the cohort, a pleasant surprise amongst all the amazing projects that were presented on the last night of the course. Many thanks for Code First Girls for running the course, and for Dojo for sponsoring our cohort. Thanks are also due to our patient and knowledgeable instructors who tirelessly explaned the secrets of SQL to us during the course!

In this project I revisited some of my PhD data on dry powder inhaler formulations for delivering drugs to the lungs from decade ago. For my PhD I had stored and processed all my data in Excel, and I wanted to see what kind of functionalities SQL had compared to Excel. In conclusion, if I was about to start a big research project again, generating lots of data, I would definitely store it all in SQL! 

All the code is available CFG SQL PROJECT.sql file in this project if you want to have a closer look. In this post I will showcase some of the highlights.

## Database structure

In my database I had seven tables. Five of the tables (Coarse lactose, Fine lactose, Lactose blends, Devices and Experiments) were for storing experimental variables and two (Particle size and Fine particle fraction delivered from a formulation) for storing results from experiments. All the tables had primary keys. Both the results tables as well as the lactose blends table had foreign keys. This allowed the results to be related back to the experimental variables, and the blends to their fine and coarse lactose components.  

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/31d940c0-b83b-41e6-b847-05e4d92a2377)

## Tables
Below are screenshots of all the tables in my database

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/c061dd45-f456-487a-8efe-2cb52d5469d5)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/01bb8dd0-19e2-474a-b905-32c3e9877c75)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/75dbbd68-bbbb-48a9-a47d-038e487e6bf0)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/0aeeaa4f-8b61-4ed6-91e8-d0a04b2dd9fd)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/fa7b3ac5-c218-4d66-a5dd-e31a3b0b51a1)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/6a0dfe06-21eb-4e1e-b51b-dd46ca28c843)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/ee23d421-4a66-44de-ab9a-9d3af48564b6)

## A view to display the blend composition and particle size

During my PhD I often wanted to see the composition of the blends in terms of their coarse and fine components as well as the percentage of fines within a blend in conjunction with a result from an experiment. To achieve this in SQL, I created a view displaying information from the lactose blends, coarse lactose, fine lactose and particle size results tables using joins.

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/57f362b7-c38e-4a89-ac67-813b6e62bbf3)

## A view to export data in Tableau for visualisation

During my PhD I used Excel for initial visualisations on the data, and once I had decided what data I was going to display in my final figures, I prepared them using GraphPad. We learned a little bit about Tableau during the Kickstarter course, and therefore I wanted to create a view in SQL that I could use for exporting data into Tableau for visualising my data. In the view I combined Blend_ID, Device_ID and results from the fine particle fraction and particle size measurements. I then plotted the fine particle fraction on different devices as a function of the particle size of the blends in Tableau.

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/c310982d-0893-48e7-aede-2e4922a9d1fe)

![image](https://github.com/HanneBown/CFG_SQL_Project/assets/153863652/a56d9ccf-7e8a-4b63-bf60-2d83b64e8f00)

## Other functionalities of the database

I created a stored procedure to retrieve all the blend and device combinations where >40% of the drug gets delivered. I also created a trigger, whereupon adding new coarse lactose, the lactose blends and particle size tables get updated automatically with new blend IDs and compositions. Following this, I created an event which returns a list of experiments to run, i.e. all the entries where the result is null. I also shoehorned in a function just to get to practice this functionality in SQL - in real life I would not want to calculate the fraction, but I could not think of any other functions that would have been useful either so I added a function to return results in decimal format instead of as %. 

## Reflections

I used only a small fraction of my PhD data for this project, and the data that I chose to use was the mean values from triplicate measurements. Upon reflection, my queries did not always return meaningful data, and the project would have been better if I had taken the raw data from individual experiments. This would have allowed me to query the average results from the repeated measurements instead of returning the average result for example for a particular device or a fine lactose. Another improvement I would implement is to autoincrement primary keys. That would allow more streamlined update of the database upon adding new experimental variables.








