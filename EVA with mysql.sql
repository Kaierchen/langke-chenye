#1Display the names of the unique launch sites in the space mission
SELECT DISTINCT a.Launch_Site 
        FROM SpaceX as a
# Display 5 records where launch sites begin with the string 'CCA'
        SELECT *
        FROM SpaceX
        WHERE Launch_Site LIKE 'CCA%'
        LIMIT 5
#Display the total payload mass carried by boosters launched by NASA (CRS)

        SELECT SUM(a.PAYLOAD_MASS__KG_) AS Total_PayloadMass
        FROM SpaceX as a
        WHERE Customer LIKE 'NASA (CRS)'
#Display average payload mass carried by booster version F9 v1.1
        SELECT AVG(A.PAYLOAD_MASS__KG_ )AS Avg_PayloadMass
        FROM SpaceX AS A
        WHERE Booster_Version = 'F9 v1.1'
 #List the date when the first successful landing outcome in ground pad was acheived.
#Hint:Use min function
        SELECT MIN(a.Date) AS FirstSuccessfull_landing_date
        FROM SpaceX as a
        WHERE a.Landing_Outcome like 'Success (drone ship)'

				
        